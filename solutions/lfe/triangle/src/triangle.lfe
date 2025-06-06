(defmodule triangle
  (export (kind 3)))

(defun kind
    ((A B C) (when (and (=< A 0)
                        (=< B 0)
                        (=< C 0)))
        'false)
    ((A B C) (when (or (>= C (+ A B))
                       (>= B (+ A C))
                       (>= A (+ B C))))
        'false)
    ((A A A)
        'equilateral)
    ((A A _)
        'isosceles)
    ((A _ A)
        'isosceles)
    ((_ A A)
        'isosceles)
    ((_ _ _)
        'scalene))