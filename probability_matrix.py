import numpy as np
'''
Questo modello permette all'agente di vedere quale sia la probabilità che un oggetto abbia una certa apparenza in una partita di Nethack.
Il modello consiste in una matrice quadrata, nella quale a ogni riga è associata un'apparenza e a ogni colonna un oggetto.
In questa matrice, nella cella alla riga i e colonna j, è memorizzata la probabilità che l'oggetto j abbia l'apparenza i.
Un oggetto può avere una sola apparenza e una apparenza può appartenere ad un solo oggetto, quindi in questa matrice la somma per righe e per colonne deve valere sempre 1(è bistocastica).
Un oggetto ha una rarità, inversamente proporzionale alla sua entry in aboundance.
Il modello è capace di approssimare nuove probabilità di associazioni (oggetto,apparenza) in base alle probabilità date in input, facendo una sequenza di passi. Ad ogni passo la matrice viene aggiornata con il risultato di norm_step, che non è altro che il valor medio tra la matrice con colonne normalizzate e la matrice con righe normalizzate. Fare il valor medio permette di avvicinarsi ad una buona approssimazione con un percorso più uniforme(senza effetto zig-zag che può derivare dall'alternarsi di normalizzazione per righe e colonne). Esistono metodi più avanzati per trovare la matrice bistocastica più vicina a una matrice presa in input, è quindi possibile migliorare norm_step
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


def norm_step(arr):
    norm_by_column = arr / arr.sum(axis=0)
    norm_by_row = arr.transpose() / arr.sum(axis=1)
    mean = (norm_by_column + norm_by_row.transpose())/2
    return mean


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

# I find 50 padded gloves(must be very common, like leather gloves)
for i in range(50):
    found(a, "padded gloves")

# I find some information about riding gloves(must be fumbling)
is_not(a, "riding gloves", "gauntlets of power")
is_not(a, "riding gloves", "gauntlets of dexterity")

mse = lambda x,y: ((x-y)**2).mean()
from1 = []
froma = []
summse = []
b = a.copy()
# reasoning...
for i in range(100):
    b = norm_step(b)
    from1.append(mse(np.concatenate((b.sum(axis=0), b.sum(axis=1))), 1))
    froma.append(mse(b, a))
    summse.append(from1[i] + froma[i])
#    if from1[i] + froma[i] < ???: break

print(get_probability(b, "riding gloves", "gauntlets of fumbling"))
print(get_probability(b, "padded gloves", "gauntlets of power"))
print(get_probability(b, "padded gloves", "leather gloves"))

from matplotlib import pyplot as plt
plt.plot(from1)
plt.plot(froma)
plt.plot(summse)
