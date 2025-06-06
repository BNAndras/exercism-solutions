#lang racket

(provide score)

(define (score x y)
  (define radius (sqrt (+ (expt x 2) (expt y 2))))
  (cond   
    [(> radius 10) 0]
    [(> radius 5) 1]
    [(> radius 1) 5]
    [(>= radius 0) 10]))