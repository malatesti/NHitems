from random import choice

def rnd_answer(im, a):
    obj = im.get_stochastic(a).objects
    return choice(obj)

def uni_answer(im, a):
    stoc = im.get_stochastic(a)
    V = stoc.probabilities.copy()
    V[V>0] = 1

    n = len(V)
    dirty = True
    while dirty:
        dirty = False
        for i in range(n):
            if V[i].sum() == 1:
                for j in range(n):
                    if V[i,j] == 1 and not V[:,j].sum() == 1:
                        V[:,j] = 0
                        V[i,j] = 1
                        dirty = True
    
    obj = [o for p,o in stoc.get_possible_objects(V, a) if p > 0]
    return choice(obj)

def stoc_answer(im, a):
    stoc = im.get_stochastic(a)
    return stoc.get_possible_objects(stoc.probabilities, a)[0][1]

def complete_answer(im, a):
    b = im.get_possible_objects(a)
    return b[0][1]
