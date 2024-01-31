# testing for database(objects.pl) interaction
from pyswip import Prolog
from item import Item
from stochastic_matrix import Stochastic_matrix

class Item_manager:
    def __init__(self):
        self.prolog = Prolog()
        rnd_objects_by_category = {}
        self.prolog.consult("objects.pl")
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
            self.matrices.append(Stochastic_matrix(objs, abds))

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

    def can_be(self, appearence, objects):
        mat = self.get_stochastic(appearence)
        if mat is not None:
            # objects and mat.objects must have at least one object in common
            assert any(o for o in mat.objects if o in objects), objects
            for o in mat.objects:
                if o not in objects:
                    mat.is_not(appearence, o)
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

    def parse_item(self, item_desc, charisma = "_"):
        res = list(self.prolog.query(f"phrase(item_desc(N, BUC, GREASED, POIS, EROSION, PROOF, PART, ENCH, CATEGORY, NAME, CALL, NAMED, CONT, CHARGES, LIT, POS, COST, {charisma}, _), `{item_desc}`)"))
        assert len(res), f"can't parse: {item_desc}"
        return Item(
            set(r["NAME"].decode() for r in res), # possible objects this item can be
            res[0]["CATEGORY"], # item category
            res[0]["N"], # number of items in stack
            res[0]["BUC"], # curse/bless status
            res[0]["ENCH"], # enchantment
            res[0]["CHARGES"], # charges
            res[0]["LIT"], # is it lit?
            res[0]["POS"], # item position (wielded, in hands, offhand, in hand...)
            res[0]["COST"], # item cost, when in shop
            res[0]["GREASED"], # has the item been greased?
            res[0]["POIS"], # has the item been poisoned?
            res[0]["EROSION"], # is the item eroded?
            res[0]["PROOF"], # has the item been proofed? (fireproof, waterproof...)
            res[0]["PART"], # is the item diluted or partly eaten?
            res[0]["CALL"], # how it is called
            res[0]["NAMED"], # how it is named
            res[0]["CONT"]) # how many items contains, if item is a container
