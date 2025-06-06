(defpackage :pizza-pi
  (:use :cl)
  (:export :dough-calculator :pizzas-per-cube
           :size-from-sauce :fair-share-p))

(in-package :pizza-pi)

(defun dough-calculator (pizzas diameter)
  (round (* pizzas (+ 200 (/ (* diameter pi 45) 20))))
  )

(defun size-from-sauce (sauce)
   (sqrt (/ (* sauce 40) (* pi 3)))
  )

(defun pizzas-per-cube (cube-size diameter)
  (floor (/ (* 2 (expt cube-size 3 )) (* pi 3 (expt diameter 2))))
  )

(defun fair-share-p (pizzas friends)
   (zerop (mod (* pizzas 8) friends))
)
