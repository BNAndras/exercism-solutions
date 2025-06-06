def steps(number):
    if number <= 0:
        raise ValueError("Only positive integers are allowed")
    tally = 0
    working = number
    while working != 1:
        if working % 2 == 0:
            working //= 2
        else:
            working = 3 * working + 1
        tally += 1
    return tally