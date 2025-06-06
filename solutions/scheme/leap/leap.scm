(import (rnrs))

(define (leap-year? year)
  ;; leap-year? : integer -> boolean
  ;; Is a Gregorian calendar year a leap year?
  (let ((divisible-by? (lambda (factor)
                            (zero? (modulo year factor)))))
    (and (divisible-by? 4)
         (or (not (divisible-by? 100))
             (divisible-by? 400)))))
