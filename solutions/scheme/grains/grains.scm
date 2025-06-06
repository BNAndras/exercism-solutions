(import (rnrs))

(define (square n)
  ;; square : integer -> integer
  ;; Return the number of grains on the n-th chessboard square
  (define (square-rec n acc)
    (if (eq? n 1)
      acc
      (square-rec (- n 1) (* 2 acc))))
  (assert (<= 1 n 64))
  (square-rec n 1))


(define (total)
  ;; total : -> integer
  ;; Return the total number of grains on a filled chessboard
  (define (total-rec n acc)
    (if (eq? n 1)
        acc
        (total-rec (- n 1) (+ acc (square n)))))
    (total-rec 64 1))