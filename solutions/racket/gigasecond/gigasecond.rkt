#lang racket

(require racket/date)

(provide add-gigasecond)

(define (add-gigasecond datetime)
  "Return a datetime one gigasecond after from the passed datetime"
  (seconds->date (+ (date->seconds datetime) 1e9)))