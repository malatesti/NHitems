def id_score(possible_answers, guess, correct_answer):
    """The agent guesses the possible objects that can have the given appearence.
    This function returns the guess score
    (this function is the same for all random appearences, so appearence doesn't have to be a function parameter)"""
    assert correct_answer in possible_answers
    assert all(a in possible_answers for a in guess)
    if correct_answer not in guess:
        return -10 # agent made a mistake
    # the more accurate the guess, the closer the score is to +1
    # if len(guess) == 1, then score = 1(the agent achieved perfect score)
    # if len(guess) == len(possible_answers), then score = 0(the agent doesn't know useful information)
    return (1 - (len(guess) - 1) / (len(possible_answers) - 1))**2
