def shortest_path(start, goal_priority, reachable, cost):
    """find the shortest path from start to any goal node n such that n in argmax(goal_priority(x)[0]),
    reachable(n) must return every node that can be reached from n
    cost must be a two dimensional array with all elements set to -1"""
    def bfs():
        # best_goal = (node, priority, cost, goal_type)
        best_goal = (0, None, None)
        cost[start] = 0
        frontier = [start]
        while len(frontier):
            n = frontier.pop(0)
            priority, goal_type = goal_priority(n)
            if priority > best_goal[0]:
                best_goal = (priority, n, goal_type)
            for r in reachable(n):
                if cost[r] == -1:
                    cost[r] = cost[n] + 1
                    frontier.append(r)
        return best_goal[1:]
    node, goal_type = bfs()
    if node is None:
        return None
    path = []
    while cost[node] > 0:
        path.append(node)
        for r in reachable(node):
            if cost[r] == cost[node] - 1:
                node = r
                break
        else:
            assert 0, path
    path.append(node)
    path.reverse()
    return path, goal_type

def follow_path(pos, path):
    """Get the next step to follow the given path"""
    assert pos in path, f"position({pos}) is out of path({path})"
    i = path.index(pos) + 1
    if i == len(path):
        return None
    return path[i]
