(defmodule leap
  (export (leap-year 1)))

(defun leap-year (year)
  (and (divisible-by? year 4)
       (or (not (divisible-by? year 100))
           (divisible-by? year 400))))

(defun divisible-by? (dividend divisor)
  (zerop (rem dividend divisor)))

(defun zerop (n)
    (== 0 n))
