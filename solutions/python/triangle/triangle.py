def is_triangle(func):
    def wrapper(sides):
        a, b, c = sorted(sides)
        satisfies_inequality = a + b >= c
        nonzero_sides = a > 0 and b > 0 and c > 0
        return nonzero_sides and satisfies_inequality and func(sides)
    return wrapper


@is_triangle
def equilateral(sides):
    return len(set(sides)) == 1


@is_triangle
def isosceles(sides):
    return len(set(sides)) < 3


@is_triangle
def scalene(sides):
    return len(set(sides)) == 3
