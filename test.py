# testing for database(objects.pl) interaction
from pyswip import Prolog
import numpy as np


class stochastic_matrix:
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
        return sorted(((self.get_prob(mat, appearence, obj), obj)
                      for o in self.objects), reverse=True)

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


prolog = Prolog()
rnd_objects_by_category = {}
prolog.consult("objects.pl")
for res in prolog.query("rnd_range(RND, _), raw_object(CATEGORY, NAME, ABOUNDANCE, _, _, _, RND)"):
    obj, category, abd = res["NAME"], res["CATEGORY"], res["ABOUNDANCE"]
    if category not in rnd_objects_by_category:
        rnd_objects_by_category[category] = ([],[])
    rnd_objects_by_category[category][0].append(obj.decode())
    rnd_objects_by_category[category][1].append(abd)

matrices = {k: stochastic_matrix(objs, abds)
            for k, (objs, abds)
            in rnd_objects_by_category.items()}
