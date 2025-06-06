(defpackage :grains
  (:use :cl)
  (:export :square :total))
(in-package :grains)

(defun square (n)
    "Return the number of grains on the nth chessboard square."
    (expt 2 (1- n)))

(defun total ()
    "Return the total number of grains on a filled chessboard."
    (1- (expt 2 64)))
