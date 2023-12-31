import numpy as np
'''
Questo modello permette all'agente di vedere quale sia la probabilità che un oggetto abbia una certa apparenza in una partita di Nethack.
Il modello consiste in una matrice quadrata, nella quale a ogni riga è associata un'apparenza e a ogni colonna un oggetto.
In questa matrice, nella cella alla riga i e colonna j, è memorizzata la probabilità che l'oggetto j abbia l'apparenza i.
Un oggetto può avere una sola apparenza e una apparenza può appartenere ad un solo oggetto, quindi in questa matrice per ogni riga e per ogni colonna, la somma degli elementi deve valere sempre 1(è bistocastica).
Un oggetto ha una rarità, inversamente proporzionale alla sua entry in aboundance.
Il modello è capace di approssimare nuove probabilità di associazioni (oggetto,apparenza) in base alle probabilità date in input, usando l'algoritmo di sinkhorn_knopp per portare la somma degli elementi sulle righe e colonne a 1
'''

objects = ["leather gloves",
           "gauntlets of fumbling",
           "gauntlets of power",
           "gauntlets of dexterity"]

aboundance = [
    16,  # leather gloves(more common)
    8,  # gauntlets of fumbling
    8,  # gauntlets of power
    8  # gauntlets of dexterity
]

# no particular order
appearences = ["old gloves",
               "padded gloves",
               "riding gloves",
               "fencing gloves"]


def sinkhorn_knopp_step(arr, c, r):
    c = 1/(arr.transpose()@r)
    r = 1/(arr@c)
    return (c, r)


def is_not(arr, appearence, obj):
    arr[appearences.index(appearence), objects.index(obj)] = 0


def known(arr, appearence, obj):
    arr[appearences.index(appearence), :] = 0  # all set to 0
    arr[appearences.index(appearence), objects.index(obj)] = 1  # except this one


def found(arr, appearence):
    row = arr[appearences.index(appearence)]
    row *= aboundance
    # normalize in advance to avoid overflow
    row /= row.sum()


def get_probability(arr, appearence, obj):
    return arr[appearences.index(appearence), objects.index(obj)]


a = np.ones((4, 4))/4  # all appearences have same probability

print("I find 50 padded gloves(must be very common, like leather gloves)")
for i in range(50):
    found(a, "padded gloves")

print("I find some information about riding gloves(must be fumbling)")
is_not(a, "riding gloves", "gauntlets of power")
is_not(a, "riding gloves", "gauntlets of dexterity")

mse = lambda x,y: ((x-y)**2).mean()
from1 = []
# reasoning...
c, r = np.ones((2, 4))
for i in range(100):
    c, r = sinkhorn_knopp_step(a, c, r)
    b = a*c*r.reshape(-1, 1)
    from1.append(mse(np.concatenate((b.sum(axis=0), b.sum(axis=1))), 1))

print("I am ", get_probability(b, "riding gloves", "gauntlets of fumbling")*100, "% sure that riding gloves are gauntlets of fumbling")
print("I am ", get_probability(b, "padded gloves", "gauntlets of power")*100, "% sure that padded gloves are gauntlets of power")
print("I am ", get_probability(b, "padded gloves", "leather gloves")*100, "% sure that padded gloves are leather gloves")

from matplotlib import pyplot as plt
plt.plot(from1)
plt.show()
