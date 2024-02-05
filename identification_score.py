def id_score(possible_answers, guess, correct_answer):
    """The agent guesses the possible objects that can have the given appearence.
    This function returns the guess score
    (this function is the same for all random appearences, so appearence doesn't have to be a function parameter)"""
    assert correct_answer in possible_answers
    assert all(a in possible_answers for a in guess)
    assert len(guess)
    if correct_answer not in guess:
        return -10 # agent made a mistake
    # the more accurate the guess, the closer the score is to +1
    # if len(guess) == 1, then score = 1(the agent achieved perfect score)
    # if len(guess) == len(possible_answers), then score = 0(the agent doesn't know useful information)
    return (1 - (len(guess) - 1) / (len(possible_answers) - 1))**2

def total_score(itm_manager, correct_answers, probability_treshold):
    """Get the final agent score, after the agent used itm_manager in an episode
    correct_answers is a dictionary where correct_answers[appearence] = object_name
    probability_treshold(=pt) should be close to 0:
    if pt == 0(too low), then consider objects that have even the smallest probability to have
    a given appearence
    if pt == 1(too high), then only consider objects that have higher-than-average probability
    to have a given appearence
    pt ~= 0.25 should be good enough"""
    random_appearences = []
    for (min_app, max_app) in itm_manager.appearence_ranges:
        random_appearences.extend(range(min_app, max_app))
    return sum(
        id_score(itm_manager.get_stochastic(a).objects,
                 itm_manager.get_answer(a, probability_treshold),
                 correct_answers[a])
        for a in random_appearences
        if a in correct_answers)
