"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum
"""


EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


def bake_time_remaining(elapsed_bake_time: int) -> int:
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - elapsed_bake_time


def preparation_time_in_minutes(number_of_layers: int) -> int:
    """Calculate the preparation time for a certain number of lasagna layers.

    :param number_of_layers: int - the number of layers being prepared.
    :return: int - preparation time (in minutes) derived from 'PREPARATION_TIME'.

    Function that takes the number of lasagna layers being prepared
    and returns the number of minutes the preparation will be taken
    based on `PREPARATION_TIME`.
    """

    return number_of_layers * PREPARATION_TIME


def elapsed_time_in_minutes(number_of_layers: int, elapsed_bake_time: int) -> int:
    """Calculate the preparation time for a certain number of lasagna layers.
    
    :param number_of_layers: int - the number of layers that were prepared.
    :param elapsed_bake_time: int - the minutes elapsed baking the lasagna so far
    :return: int - the actual minutes elapsed since the lasagna preparation began.
    
    Function that takes the number of lasagna layers being prepared and the
    minutes already elapsed baking those prepared layers and returns the
    total minutes elapsed since the lasagna preparation began."""

    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
