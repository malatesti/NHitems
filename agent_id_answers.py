from random import choice

def rnd_answer(im, a):
    obj = im.get_stochastic(a).objects
    return choice(obj)

def uni_answer(im, a):
    obj = [o for p,o in im.get_possible_objects(a) if p != 0]
    return choice(obj)

def stoc_answer(im, a):
    stoc = im.get_stochastic(a)
    return stoc.get_possible_objects(stoc.probabilities, a)[0][1]

def complete_answer(im, a):
    return im.get_possible_objects(a)[0][1]
