(defpackage :space-age
  (:use :cl))

(in-package :space-age)

(defconstant seconds-in-orbital
  31557600
  "number of Earth seconds in one full Earth orbital period")

(defconstant ratios
  '(("Mercury"  0.2408467)
    ("Venus"    0.61519726)
    ("Earth"    1)
    ("Mars"     1.8808158)
    ("Jupiter"  11.862615)
    ("Saturn"   29.447498)
    ("Uranus"   84.016846)
    ("Neptune"  164.79132)))

(defparameter orbital-ratios
  (let ((hash-table (make-hash-table)))
    (dolist (pair ratios)
      (destructuring-bind (planet ratio) pair
        (setf (gethash planet hash-table) ratio)))
    hash-table))

(maphash (lambda (planet ratio)
           (let ((label (intern (concatenate 'string "ON-" (string-upcase planet)))))
             (progn
               (setf (symbol-function label)
                     (lambda (earth-seconds)
                       (/ earth-seconds (* seconds-in-orbital ratio))))
               (setf (documentation label 'function)
                     (format nil "Given seconds on Earth, the local age on ~a." planet))
               (export label))))
         orbital-ratios)
