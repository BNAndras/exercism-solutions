#lang racket

(provide convert)

(define translation-rules
  '((3    . "Pling")
    (5    . "Plang")
    (7    . "Plong")))

(define/contract (convert number)
  (-> number? string?)
  "Convert a number to a string based on potential factors"
  (define (divisible? factor)
    (zero? (modulo number factor)))
  (define result
    (filter-map (λ (rule) (and (divisible? (car rule))
                               (cdr rule)))
                translation-rules))
  (if (not (empty? result))
      (string-join result "")
      (number->string number)))