pub fn equilateral(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && a == b && b == c
}

pub fn isosceles(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && { a == b || a == c || b == c }
}

pub fn scalene(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && { a != b && a != c && b != c }
}

fn is_triangle(a: Float, b: Float, c: Float) -> Bool {
  has_non_zero_sides(a, b, c) && satisfies_inequality(a, b, c)
}

fn has_non_zero_sides(a: Float, b: Float, c: Float) {
  a >. 0.0 && b >. 0.0 && c >. 0.0
}

fn satisfies_inequality(a: Float, b: Float, c: Float) {
  a +. b >=. c && a +. c >=. b && c +. b >=. a
}
