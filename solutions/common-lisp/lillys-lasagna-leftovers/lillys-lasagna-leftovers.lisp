(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

(defconstant minutes-per-layer
  19
  "The number of minutes to prepare a single layer")

(defun preparation-time (&rest layers)
  "Calculate the time spent preparing all the layers"
  (* (length layers) minutes-per-layer))
  
(defconstant normal-time 337 "")

(defun remaining-minutes-in-oven (&optional (length :normal)) 
  "Calculate remaining time in oven using an optional keyword"
  (case length
   (:very-short (- normal-time 200))
    (:shorter (- normal-time 100))
    (:normal normal-time) 
    (:longer (+ normal-time 100))
    (:very-long (+ normal-time 200))
    ((nil) 0)))

(defun split-leftovers (&key (weight nil weight-p) (human 10) (alien 10))
  "Calculate the remaining leftovers once leftovers aredistributed between humans and aliens"
  (cond
    (weight (max 0 (- weight human alien)))
    (weight-p :looks-like-someone-was-hungry)
    (t :just-split-it)))