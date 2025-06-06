(defpackage :space-age
  (:use :cl))

(in-package :space-age)

(defconstant seconds-in-orbital
  31557600
  "Bumber of Earth seconds in a single orbital period")

(defparameter orbital-ratios
  (make-hash-table)
  "Lookup table of orbital ratios relative to Earth")

(setf (gethash "Mercury" orbital-ratios) 0.2408467)
(setf (gethash "Venus" orbital-ratios)   0.61519726)
(setf (gethash "Earth" orbital-ratios)   1)
(setf (gethash "Mars" orbital-ratios)    1.8808158)
(setf (gethash "Jupiter" orbital-ratios) 11.862615)
(setf (gethash "Saturn" orbital-ratios)  29.447498)
(setf (gethash "Uranus" orbital-ratios)  84.016846)
(setf (gethash "Neptune" orbital-ratios) 164.79132)

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
