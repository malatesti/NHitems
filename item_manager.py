# testing for database(objects.pl) interaction
from pyswip import Prolog
import numpy as np


class Item_manager:
    def __init__(self):
        self.prolog = Prolog()
        rnd_objects_by_category = {}
        self.prolog.consult("../objects.pl")
        for res in self.prolog.query("rnd_range(RND, MIN-MAX), raw_object(CATEGORY, NAME, ABOUNDANCE, _, _, _, RND)"):
            category, obj, min_app, max_app, abd = res["CATEGORY"], res["NAME"], res["MIN"], res["MAX"], res["ABOUNDANCE"]
            if category not in rnd_objects_by_category:
                rnd_objects_by_category[category] = (min_app, max_app, [], [])
            rnd_objects_by_category[category][2].append(obj.decode())
            rnd_objects_by_category[category][3].append(abd)

        self.appearence_ranges = []
        self.matrices = []
        for (min_app, max_app, objs, abds) in rnd_objects_by_category.values():
            self.appearence_ranges.append((min_app, max_app))
            self.matrices.append(self.Stochastic_matrix(objs, abds))

    def get_stochastic(self, appearence):
        for (i, (min_app, max_app)) in enumerate(self.appearence_ranges):
            if min_app <= appearence <= max_app:
                return self.matrices[i]
        return None

    def found(self, appearence):
        mat = self.get_stochastic(appearence)
        if mat is not None:
            mat.found(appearence)
            return True
        return False

    def is_not(self, appearence, obj):
        mat = self.get_stochastic(appearence)
        if mat is not None:
            mat.is_not(appearence, obj)
            return True
        return False

    def get_possible_objects(self, appearence):
        mat = self.get_stochastic(appearence)
        if mat is not None:
            (bis, i) = mat.get_bistochastic(10000, 1e-9)
            # print(i)
            if bis is not None:
                return mat.get_possible_objects(bis, appearence)
            return None
        possibilities = [[res["ABOUNDANCE"], res["NAME"].decode()] for res in
                         self.prolog.query(f"object(_, NAME, ABOUNDANCE, _ ,_, _, {appearence})")]
        assert len(possibilities), appearence
        sum_abd = sum(p[0] for p in possibilities)
        for p in possibilities:
            p[0] /= sum_abd
        return sorted(possibilities, reverse=True)

    def get_category(self, appearence):
        cat = [res["CATEGORY"] for res in self.prolog.query(f"once(object(CATEGORY, _, _, _, _, _, {appearence}))")]
        assert len(cat) == 1, cat
        return cat

    def parse_item(self, item_desc):
        res = self.prolog.query("phrase(item_desc(N, BUC, GREASED, POIS, EROSION, PROOF, PART, ENCH, CATEGORY, NAME, CALL, NAMED, CONT, CHARGES, LIT, POS, COST), `{item_desc}`)")
        assert len(res), item_desc
        return self.Item(
            [r["NAME"] for r in res],
            res[0]["CATEGORY"],
            res[0]["N"],
            res[0]["BUC"],
            res[0]["ENCH"],
            res[0]["CHARGES"],
            res[0]["LIT"],
            res[0]["POS"],
            res[0]["COST"],
            res[0]["GREASED"],
            res[0]["POIS"],
            res[0]["EROSION"],
            res[0]["PROOF"],
            res[0]["PART"],
            res[0]["CALL"],
            res[0]["NAMED"],
            res[0]["CONT"])

    class Item:
        def __init__(self, possible_objects, category, count, buc_status):#TODO
            pass

    class Stochastic_matrix:
        def __init__(self, objs, aboundance):
            n = len(objs)
            assert n == len(aboundance)
            self.objects = objs
            self.appearences = []
            self.aboundance = aboundance
            self.probabilities = np.ones((n, n))/n
            self.c, self.r = np.ones((2, n))

        def reset(self):
            self.probabilities[:] = 1/len(self.objects)

        def mse(self, mat):
            return ((np.concatenate(
                (mat.sum(axis=0),
                 mat.sum(axis=1))
            ) - 1)**2).mean()

        def get_bistochastic(self, max_it, tolerance):
            b = self.probabilities * self.c * self.r.reshape(-1, 1)
            if self.mse(b) > self.mse(self.probabilities):
                self.c[:] = self.r[:] = 1  # reset
            for i in range(max_it):
                self.c = 1/(self.r @ self.probabilities)
                self.r = 1/(self.probabilities @ self.c)
                b[:] = self.probabilities * self.c * self.r.reshape(-1, 1)
                if self.mse(b) <= tolerance:
                    return (b, i+1)
            return (None, max_it)

        def get_prob(self, mat, appearence, obj):
            assert obj in self.objects
            if appearence not in self.appearences:  # not found yet
                assert len(self.appearences) < len(self.objects)
                return mat[-1, self.objects.index(obj)]
            return mat[self.appearences.index(appearence),
                       self.objects.index(obj)]

        def get_possible_objects(self, mat, appearence):
            return sorted(([self.get_prob(mat, appearence, obj), obj]
                          for obj in self.objects), reverse=True)

        def is_not(self, appearence, obj):
            assert obj in self.objects
            assert appearence in self.appearences
            row = self.probabilities[self.appearences.index(appearence)]
            row[self.objects.index(obj)] = 0
            row /= row.sum()

        def known(self, appearence, obj):
            assert obj in self.objects
            assert appearence in self.appearences
            self.probabilities[self.appearences.index(appearence), :] = 0
            self.probabilities[self.appearences.index(appearence),
                               self.objects.index(obj)] = 1

        def found(self, appearence):
            if appearence not in self.appearences:  # first time
                self.appearences.append(appearence)
                assert len(self.appearences) <= len(self.objects)
            row = self.probabilities[self.appearences.index(appearence)]
            row *= self.aboundance
            row /= row.sum()

