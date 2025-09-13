def classify(number):
    """ A perfect number equals the sum of its positive divisors.

    :param number: int a positive integer
    :return: str the classification of the input integer
    """

    if number <= 0:
        raise ValueError('Classification is only possible for positive integers.')

    aliquot_sum = aliquot_sum_of(number)
    if number < aliquot_sum:
        return 'abundant'
    if number > aliquot_sum:
        return 'deficient'
    return 'perfect'


def aliquot_sum_of(number):   
    return sum(x for x in range(1, number) if not number % x)
