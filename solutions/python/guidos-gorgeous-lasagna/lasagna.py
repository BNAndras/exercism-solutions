EXPECTED_BAKE_TIME = 40
"""Expected time (in minutes) to bake a lasagna regardless of size"""

PREPARATION_TIME = 2
"""Expected time (in minutes) to prepare a single layer of lasagna"""


def bake_time_remaining(elapsed_bake_time: int):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - elapsed_bake_time


def preparation_time_in_minutes(number_of_layers: int):
    """Calculate the preparation time.

    :param number_of_layers: int - number of lasagna layers being prepared
    :return: int - preparation time (in minutes) using `PREPARATION_TIME`

    Function that takes the number of lasagna layers being prepared as an argument
    and returns how many minutes it will take to prepare all the layers
    based on the `PREPARATION_TIME`.
    """

    return number_of_layers * PREPARATION_TIME


def elapsed_time_in_minutes(number_of_layers: int, time_elapsed: int):
    """

    :param number_of_layers: number of lasagna layers being prepared
    :param time_elapsed: time elapsed so far (in minutes)
    :return: int - elapsed time (in minutes)

    Function that takes as arguments the number of lasagna layers being prepared
    and the amount of time elapsed so far (in minutes),
    returning the total time elapsed including preparation times
    """

    return time_elapsed + preparation_time_in_minutes(number_of_layers)
