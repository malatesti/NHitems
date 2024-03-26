import numpy as np

# uncomment and use this function to generate random constrained permutations with csp
# from constraint import *
# def permutations_sample_csp(constraints, n):
#     k = len(constraints)
#     p = Problem()
#     p.addVariables(range(k), range(k))
#     p.addConstraint(AllDifferentConstraint(), range(k))
#     for i in range(k):
#         p.addConstraint(InSetConstraint([j for j in range(k) if constraints[j,i] == 0]), [i])
#     perm = []
#     i = 0
#     for sol in p.getSolutionIter():
#         perm.append([sol[u] for u in range(k)])
#         i += 1
#         if i == n:
#             break
#     return perm

def permutations_sample(constraints, n):
    k = len(constraints)
    assert k < 256, "k is too big, this will not work"
    if k <= 8:
        # k is small, then we can return all possible k! permutations
        from itertools import permutations
        return [p for p in permutations(range(k)) if not constraints[p ,range(k)].any()]
    possible_numbers_by_place = [(j, [i for i in range(k) if constraints[i, j] == 0]) for j in range(k)]
    possible_numbers_by_place = [(j, ps) for j, ps in possible_numbers_by_place if len(ps) < k/4]
    perms = []
    N = n*4
    while len(perms) < min(n, N):
        N -= 1
        # set the values of the permutation to a random sequence where constraints are strict
        strict = np.array([[i, np.random.choice(posb)] for i, posb in possible_numbers_by_place])
        if strict.size == 0:
            strict = strict.reshape(0,2)
        # check that all of them are different(it is a part of a permutation)
        sequence = strict[:,1]
        if len(sequence) > len(set(sequence)):
            continue
        rest = np.array([[i,0] for i in range(k) if i not in strict[:,0]])
        for i in range(n // 4):
            # get the permutation of the remaining values
            rest[:,1] = np.random.permutation([x for x in range(k) if x not in sequence])
            # check that all of them respect the constraints
            if not constraints[rest[:, 1], rest[:, 0]].any():
                break
        else:
            continue
        perm = np.zeros(k, dtype='uint8')
        # fit them into final permutation and add to list
        if strict.size > 0:
            perm[strict[:,0]] = strict[:,1]
        if rest.size > 0:
            perm[rest[:,0]] = rest[:,1]
        perms.append(perm)
    return perms

class Multinomial:
    def __init__(self, objects, p):
        self.objects = objects
        self.p = p
        k = len(objects)
        self.occourrence_vector = np.zeros(k, dtype='uint16')
        self.constraints = np.zeros((k,k), dtype='bool')
        self.probability_matrix = None
        self.appearences = []

    def add_appearence_if_missing(self, appearence):
        """If appearence is new, add it to the list"""
        if appearence not in self.appearences:
            self.appearences.append(appearence)
            assert len(self.appearences) <= len(self.objects)

    def found(self, appearence):
        self.add_appearence_if_missing(appearence)
        if self.probability_matrix is not None:
            self.probability_matrix = None
        self.occourrence_vector[self.appearences.index(appearence)] += 1

    def is_not(self, appearence, obj):
        assert obj in self.objects
        self.add_appearence_if_missing(appearence)
        if self.probability_matrix is not None:
            self.probability_matrix = None
        self.constraints[self.appearences.index(appearence), self.objects.index(obj)] = 1

    def get_prob(self, mat, appearence, obj):
        """Get the probability that obj has the given appearence, given the probability matrix"""
        assert obj in self.objects
        if appearence not in self.appearences:  # not found yet
            assert len(self.appearences) < len(self.objects)
            return mat[-1, self.objects.index(obj)]
        return mat[self.appearences.index(appearence),
                   self.objects.index(obj)]

    def get_possible_objects(self, appearence):
        k = len(self.objects)

        if self.probability_matrix is None:
            from math import prod, factorial
            # calculate n!/prod(xi! for xi in x)  (constant part of multinomial mass function)
            nx = factorial(sum(self.occourrence_vector)) / prod(factorial(x) for x in self.occourrence_vector)

            # associate to every possible permutation Perm the probability that Perm Generator = occourrence vector
            permutation_probability = ((P, nx*prod(p**x for p, x in zip(self.p, [self.occourrence_vector[i] for i in P])))
                                       for P in permutations_sample_csp(self.constraints, 2048))
            self.probability_matrix = np.zeros((k,k))
            sum_prob = 0
            for perm, prob in permutation_probability:
                self.probability_matrix[perm, range(k)] += prob
                sum_prob += prob

            self.probability_matrix /= sum_prob

        return sorted(([self.get_prob(self.probability_matrix, appearence, o), o] for o in self.objects), reverse=True)
