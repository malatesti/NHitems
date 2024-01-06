from pyswip import Prolog
import numpy as np


class bs_matrix:
    def __init__(self, objs, aboundance):
        n = len(objs)
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
        for _ in range(max_it):
            self.c = 1/(self.r @ self.probabilities)
            self.r = 1/(self.probabilities @ self.c)
            b[:] = self.probabilities * self.c * self.r.reshape(-1, 1)
            if self.mse(b) <= tolerance:
                return b
        return None

    def get_prob(self, mat, appearence, obj):
        assert obj in self.objects
        if appearence not in self.appearences:  # not found yet
            assert len(self.appearences) < len(self.objects)
            return mat[-1, self.objects.index(obj)]
        return mat[self.appearences.index(appearence),
                   self.objects.index(obj)]

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
        if appearence not in self.appearences:
            self.appearences.append(appearence)
            assert len(self.appearences) <= len(self.objects)
        row = self.probabilities[self.appearences.index(appearence)]
        row *= self.aboundances
        row /= row.sum()


prolog = Prolog()
objects_by_kind = {}
prolog.consult("objects.pl")
for res in prolog.query("kind(O, K)"):
    obj, kind = res["O"], res["K"]
    if kind not in objects_by_kind:
        objects_by_kind[kind] = []
    objects_by_kind[kind].append(obj.decode())


def get_aboundance(prolog, cat, obj):
    res = list(prolog.query(f'object({cat}, "{obj}", ABOUNDANCE, _, _, _)'))
    assert len(res) == 1, (obj, res)
    return res[0]["ABOUNDANCE"]


matrices = {k: bs_matrix(objs, [
    get_aboundance(prolog, k, obj) for obj in objs
]) for k, objs in objects_by_kind.items()}
