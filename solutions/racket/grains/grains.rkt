#lang racket

(provide square total)

(define (square nth)
  ;;"This function returns the number of grains on the nth chessboard square."
  (expt 2 (sub1 nth)))

(define (total)
  ;;"This function returns the total number of grains on a filled chessboard."
  (sub1 (expt 2 64)))