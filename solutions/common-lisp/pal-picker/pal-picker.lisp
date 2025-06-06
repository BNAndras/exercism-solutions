(defpackage :pal-picker
  (:use :cl)
  (:export :pal-picker :habitat-fitter :feeding-time-p
           :pet :play-fetch))

(in-package :pal-picker)

(defun pal-picker (human-personality)
  "Select a pet complementing human personality"
  (case human-personality
    (:lazy "Cat")
    (:energetic "Dog")
    (:quiet "Fish")
    (:hungry "Rabbit")
    (:talkative "Bird")
    (otherwise "I don't know... A dragon?")))

(defun habitat-fitter (animal-kg)
  "Select a habitat size by animal weight"
  (cond ((>= animal-kg 40) :massive)
        ((>= animal-kg 20) :large)
        ((>= animal-kg 10) :medium)
        ((>= animal-kg 1) :small)
        (t :just-your-imagination)))

(defun feeding-time-p (fullness)
  "Returns whether it's feeding time or not"
  (if (> fullness 20) "All is well." "It's feeding time!"))

(defun pet (pet)
  "Checks if it's okay to pet this animal animal"
  (when (string= pet "Fish") "Maybe not with this pet..."))

(defun play-fetch (pet)
  "Checks if it's okay to play fetch with this animal"
  (unless (string= pet "Dog") "Maybe not with this pet..."))