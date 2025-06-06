#lang racket

(require math/number-theory)

(define _rules
  '((3    . "Pling")
    (5    . "Plang")
    (7    . "Plong")))

(define (convert number)
  "Convert a number to a string based on potential factors"
  (let ([result
          (for/list ([rule (in-list _rules)]
                     #:when (divides? (car rule) number))
            (cdr rule))])
    (if (not (empty? result))
        (string-join result "")
        (number->string number))))

(provide
  (contract-out
    [convert (-> number? string?)]))