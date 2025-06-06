(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven ()
  "Expected minutes in oven for lasagna"
  337)

(defconstant *minutes-per-layer*
  19
  "Minutes spent preparing a single lasagna layer")

(defun remaining-minutes-in-oven (bake-time-so-far)
  "Remaining time until the expected time in oven elapses"
  (- (expected-time-in-oven) bake-time-so-far))

(defun preparation-time-in-minutes (layer-count)
  "Total time preparing each layer of lasagna before baking"
  (* layer-count *minutes-per-layer*))

(defun elapsed-time-in-minutes (layer-count minutes-baked)
  "Time spent preparing and baking a lasagna until the current moment"
  (+ (preparation-time-in-minutes layer-count) minutes-baked)) 