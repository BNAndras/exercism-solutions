provide: equilateral, isosceles, scalene end

import lists as L
import sets as S

fun equilateral(sides :: List<Number>) -> Boolean:
  is_triangle(sides) and (uniq-elems(sides) == 1)
end

fun isosceles(sides :: List<Number>) -> Boolean:
  is_triangle(sides) and (uniq-elems(sides) <= 2)
end

fun scalene(sides :: List<Number>) -> Boolean:
  is_triangle(sides) and (uniq-elems(sides) == 3)
end

fun uniq-elems(lst :: List<Any>) -> NumInteger:
  S.list-to-list-set(lst).size()
end

fun is_triangle(sides :: List<Number>) -> Boolean:
  sorted = sides.sort()
  a = sorted.get(0)
  b = sorted.get(1)
  c = sorted.get(2)

  ((a + b) > c) and
  L.all(
    lam(side):
      not(side ==  0)
    end,
    sides)
end
