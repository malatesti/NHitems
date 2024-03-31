import random
import minihack, gym
import numpy as np
from nle import nethack as nh
from collections import namedtuple
from item_manager_sk import Item_manager_sk
from item_manager_mc import Item_manager_mc
from path_finding import *
from identification_score import total_score
from agent_id_answers import *

def is_floor(g):
    return nh.glyph_to_cmap(g) in [12, 19, 20, 21, 22]

def is_stair(g):
    return nh.glyph_to_cmap(g) in [23, 24]

def is_door(g):
    return nh.glyph_to_cmap(g) in [13, 14, 15, 16]

def is_object(g): # in this environment, we only care about scrolls and potions
    return nh.glyph_is_object(g) and ord(nh.objclass(nh.glyph_to_obj(g)).oc_class) in [nh.POTION_CLASS, nh.SCROLL_CLASS]

def is_altar(g):
    return nh.glyph_to_cmap(g) == 27

def is_passable(g):
    return any(is_x(g) for is_x in [is_floor, is_stair, is_door, is_object, is_altar])

def is_wall(g):
    return nh.glyph_to_cmap(g) in [1, 2]

def is_stone(g):
    """Stone is used for unexplored areas"""
    return nh.glyph_to_cmap(g) == 0

def axis_differences(a, b):
    assert len(a) == len(b), (a,b)
    return (p[0] - p[1] for p in zip(a, b))

def axis_distances(a, b):
    return (abs(d) for d in axis_differences(a, b))

def manhattan_dist(a, b):
    return sum(axis_distances(a, b))

def chebyshev_dist(a, b):
    return max(axis_distances(a, b))

def ring(center, radius):
    """List all the positions that are in the ring with the given center and radius"""
    return ((center[0] + i, center[1] + j)
            for i in range(-radius, radius + 1)
            for j in range(-radius, radius + 1)
            if max(abs(i), abs(j)) == radius)

def neighbours(level, position):
    return (n for n in ring(position, 1)
            if 0 <= n[0] < level.shape[0]
            and 0 <= n[1] < level.shape[1])

def reachable_tiles(level, position):
    """List all reachable positions you can move to, if you are at given position"""
    return (neighbour for neighbour in neighbours(level, position)
            if is_passable(level[neighbour])
            and not ((is_door(level[position]) or is_door(level[neighbour]))
                    and manhattan_dist(position, neighbour) == 2))

def move_action(position, destination):
    return {
        (-1, 0): nh.CompassDirection.N,
        (0,  1): nh.CompassDirection.E,
        (1,  0): nh.CompassDirection.S,
        (0, -1): nh.CompassDirection.W,
        (-1, 1): nh.CompassDirection.NE,
        (1,  1): nh.CompassDirection.SE,
        (1, -1): nh.CompassDirection.SW,
        (-1,-1): nh.CompassDirection.NW
    }[tuple(axis_differences(destination, position))]

def useful_info(obs):
    return tuple(obs['blstats'][[nh.NLE_BL_Y, nh.NLE_BL_X]]), \
        obs['glyphs'], \
        bytes(obs['tty_chars'][0]).strip().decode(), \
        obs['blstats'][nh.NLE_BL_CHA], \
        zip(obs['inv_letters'], (nh.glyph_to_obj(g) for g in obs['inv_glyphs'] if g < nh.MAX_GLYPH), (bytes(s).rstrip(b'\0').decode() for s in obs['inv_strs']))

reset = False
def step(env, action, level, pos, render=False):
    saved_glyphs = {p: level[p] for p in neighbours(level, pos)}
    if not saved_glyphs:
        reset = True
        return False
    saved_glyphs[pos] = level[pos]
    obs, _, done, _ = env.step(env.actions.index(action))
    if render: env.render()
    pos, level, msg, cha, inventory = useful_info(obs)
    level[pos] = saved_glyphs[pos]
    return pos, level, msg, cha, inventory, done
    

def shortest_path_to_goal(level, position, goal_priority, randomized=True):
    """Find the shortest path to g such that g in argmax(goal_priority(x)[0])"""
    order = (lambda l: random.sample(l, len(l))) if randomized else lambda l:l
    return shortest_path(
        position, # start position for the search
        goal_priority, # goal_priority((y, x)) must return the priority for the goal (y, x). priority<=0 means (y, x) is not a goal
        lambda p: order(list(reachable_tiles(level, p))), # what tiles can be reached from position p?
        -np.ones(level.shape)) # all tile costs are initialized to -1(= unknown cost)

MAX_STEPS = 3000
env = gym.make(
    "MiniHack-Skill-Custom-v0",
    des_file = """
    LEVEL: "mylevel"

    ROOM: "ordinary", lit, (1,1), random, (28,14) {
        SUBROOM: "potion shop", lit, (2,2), (12,4) {
            ROOMDOOR: false, closed, east, random
        }
        SUBROOM: "scroll shop", lit, (2,9), (18,3) {
            ROOMDOOR: false, closed, north, random
        }
    }
    ROOM: "ordinary", lit, random, random, (13,6) {
        ALTAR: random, random, altar
    """ \
    + "OBJECT: '!', random\n"*9 \
    + "OBJECT: '?', random\n"*16 \
    + """
    }
    RANDOM_CORRIDORS
    """,
    allow_all_modes = True,
    max_episode_steps = MAX_STEPS,
    actions = nh.ACTIONS + (nh.WizardCommand.WIZIDENTIFY,),
    observation_keys = ('glyphs', 'tty_chars', 'blstats', 'inv_glyphs', 'inv_letters', 'inv_strs'),
    wizard=True,
)
results = {
    'random':[],
    'uniform':[],
    'greedy':[],
    'Sinkhorn Knopp':[]}

def episode():
    reset = False
    pos, level, msg, cha, inv = useful_info(env.reset())
    level[pos] = nh.GLYPH_CMAP_OFF + 19
    #env.render()
    # item manager (uses the Sinkhorn Knopp algorithm for probability estimation)
    itm_mgrsk = Item_manager_sk("objects.pl")
    starting_inventory = [(l, g, itm_mgrsk.parse_item(string).possible_objects.pop()) for l, g, string in inv]
    rooms_explored = [False, False]
    visited = []

    for l, _, name in starting_inventory:
        if name == 'pick-axe': # pick-axe is not allowed in shops...
            step(env, nh.Command.DROP, level, pos)
            step(env, l, level, pos)

    def goal_priority(position):
        glyph = level[position]
        if is_altar(glyph):
            return 1, 'altar'
        if position in visited:
            return 0, None # don't go back to visited goals
        if is_object(glyph):
            return 3, 'object' # first find all the objects(highest priority)
        if any(is_stone(level[n]) for n in neighbours(level, position)):
            return 2, 'exploration' # then explore
        if rooms_explored != [True, True] and any(is_stone(level[s])
               for n in neighbours(level, position) if is_wall(level[n])
               for s in neighbours(level, n)):
            return 2 - chebyshev_dist(position, (level.shape[0]/2, level.shape[1]/2))/level.shape[1], 'secret' # then search for secrets
        return 0, None
    done = False
    while (not reset) and (not done):

        path, goal_type = shortest_path_to_goal(level, pos, goal_priority) or ([pos, random.choice(list(reachable_tiles(level, pos)))], 'random walk')
        # print(goal_type)

        for _ in range(4):
            step(env, nh.Command.ESC, level, pos)
            next_pos = follow_path(pos, path)

            if next_pos is None: # goal is reached, now check wich goal it is
                if goal_type != "random walk":
                    visited.append(pos)
                if goal_type == 'object':
                    appearence = nh.glyph_to_obj(level[pos])
                    itm_mgrsk.found(appearence)
                    if 'You see here ' in msg:
                        dot = msg.find('.', msg.index('You see here '))
                        if(dot == -1):
                            msg += ' zorkmids).'
                            dot = msg.find('.', msg.index('You see here '))
                        itm = itm_mgrsk.parse_item(msg[msg.index('You see here ') + len('You see here ') : dot], cha)
                        itm_mgrsk.can_be(appearence, itm.possible_objects)
                        if itm.cost:
                            rooms_explored[0] = True
                        else:
                            rooms_explored[1] = True
                            _, _, msg, cha, _, done = step(env, nh.Command.PICKUP, level, pos)
                    else: # "Things that are here:"
                        step(env, nh.Command.PICKUP, level, pos)
                        step(env, nh.Command.PICKUP, level, pos)
                        _, _, msg, _, inv, done = step(env, nh.MiscAction.MORE, level, pos)
                elif goal_type == 'exploration':
                    can_move = list(reachable_tiles(level, pos))
                    if len(can_move) == 1 or len(can_move) == 2 and manhattan_dist(*can_move) == 1:
                        step(env, nh.TextCharacters.NUM_2, level, pos)
                        step(env, nh.TextCharacters.NUM_2, level, pos)
                        _, level, msg, cha, _, done = step(env, nh.Command.SEARCH, level, pos)
                elif goal_type == 'secret':
                    step(env, nh.TextCharacters.NUM_2, level, pos)
                    step(env, nh.TextCharacters.NUM_2, level, pos)
                    _, level, msg, cha, _, done = step(env, nh.Command.SEARCH, level, pos)
                elif goal_type == 'altar':
                    step(env, nh.WizardCommand.WIZIDENTIFY, level, pos)
                    step(env, nh.WizardCommand.WIZIDENTIFY, level, pos)
                    pos, level, msg, cha, inv, done = step(env, nh.MiscAction.MORE, level, pos)
                    step(env, nh.Command.ESC, level, pos)
                    correct_identification = {g: itm_mgrsk.parse_item(string).possible_objects.pop()
                                              for _, g, string in inv
                                              # do not consider starting inventory(items in it are identified from the beginning)
                                              if g not in set(i[1] for i in starting_inventory)
                                              and any(m <= g <= M for m,M in itm_mgrsk.appearence_ranges)}
                    print('ok...')
                    results['random'].append(total_score(itm_mgrsk, correct_identification, rnd_answer))
                    results['uniform'].append(total_score(itm_mgrsk, correct_identification, uni_answer))
                    results['greedy'].append(total_score(itm_mgrsk, correct_identification, stoc_answer))
                    results['Sinkhorn Knopp'].append(total_score(itm_mgrsk, correct_identification, complete_answer))
                    print('done')
                    return
                break
            if msg == 'You are carrying too much to get through.':
                return # assert 0, 'item hauling not implemented'
            if msg.startswith('The scroll turns to dust as you pick it up.'):
                step(env, nh.MiscAction.MORE, level, pos)
            if not next_pos in reachable_tiles(level, pos):
                break # something is in the way
            if is_door(level[next_pos]) and msg in ['This door is locked.', 'WHAMMM!!!']:
                step(env, nh.Command.KICK, level, pos)
            pos, level, msg, cha, inv, done = step(env, move_action(pos, next_pos), level, pos)
for i in range(10):
    print("ep ", i)
    episode()
from matplotlib import pyplot as plt
for k,v in results.items():
    plt.plot(v, label=k)
plt.legend()
plt.show()
means = [[k,sum(v)/len(v)] for k,v in results.items()]
