(import (rnrs) (ice-9 match))

(define (leap-year? year)
  ;; leap-year? : integer -> boolean
  ;; Is a Gregorian calendar year a leap year?
  (let* ((divisible-by? (lambda (factor)
                          (zero? (modulo year factor))))
         (checks (list (divisible-by? 4)
                       (divisible-by? 100)
                       (divisible-by? 400))))
    (match checks
           ((_ _ #t) #t)
           ((_ #t _) #f)
           ((#t _ _) #t)
           (_        #f))))

