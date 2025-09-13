import itertools

def steps(number):
    if number <= 0:
        raise ValueError('Only positive integers are allowed')

    for step in itertools.count():
        if number == 1:
            return step
        
        if number % 2 == 1:
            number = number * 3 + 1
        else:
            number /= 2
        
    return None
