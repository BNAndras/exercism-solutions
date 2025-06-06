(defpackage :space-age
  (:use :cl)
  (:export :on-mercury
           :on-venus
           :on-earth
           :on-mars
           :on-jupiter
           :on-saturn
           :on-uranus
           :on-neptune))

(in-package :space-age)

(defconstant *seconds-in-orbital*
  31557600
  "number of Earth seconds in an one full Earth orbital period")

(defun on-earth (earth-seconds)
  "Local age on Earth and the base implementation for on-planet"
  (/ earth-seconds *seconds-in-orbital*))

(defun on-mercury (earth-seconds)
  "Given seconds on Earth, the local age on Mercury"
  (/ (on-earth earth-seconds) 0.2408467))

(defun on-venus (earth-seconds)
  "Given seconds on Earth, the local age on Venus"
  (/ (on-earth earth-seconds) 0.61519726))

(defun on-mars (earth-seconds)
  "Given seconds on Earth, the local age on Mars"
  (/ (on-earth earth-seconds) 1.8808158))

(defun on-jupiter (earth-seconds)
  "Given seconds on Earth, the local age on Jupiter"
  (/ (on-earth earth-seconds) 11.862615))          

(defun on-saturn (earth-seconds)
  "Given seconds on Earth, the local age on Saturn"
  (/ (on-earth earth-seconds) 29.447498))

(defun on-uranus (earth-seconds)
  "Given seconds on Earth, the local age on Uranus"
  (/ (on-earth earth-seconds) 84.016846))

(defun on-neptune (earth-seconds)
  "Given seconds on Earth, the local age on Neptune"
  (/ (on-earth earth-seconds) 164.79132))