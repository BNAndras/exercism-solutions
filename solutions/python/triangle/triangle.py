def equilateral(sides):
    return is_triangle(sides) and len(set(sides)) == 1


def isosceles(sides):
    return is_triangle(sides) and len(set(sides)) < 3


def scalene(sides):
    return is_triangle(sides) and len(set(sides)) == 3


def is_triangle(sides):
    return has_non_zero_sides(*sides) and satisfies_inequality(sides)


def has_non_zero_sides(a, b, c):
    return a > 0 and b > 0 and c > 0


def satisfies_inequality(sides):
    [a, b, c] = sorted(sides)
    return a + b >= c
