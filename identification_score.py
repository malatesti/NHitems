def total_score(item_manager, correct_answers, agent_answer):
    """Get the final agent score, after the agent used item_manager in an episode.
    correct_answers is a dictionary where correct_answers[appearence] = object_name
    agent_answer(item_manager, appearence) = [list of possible objects that can have the given appearence]
    """
    return sum(
        agent_answer(item_manager, a) == correct_answers[a]
        for a in correct_answers.keys()
    ) * 100 / len(correct_answers.keys())

