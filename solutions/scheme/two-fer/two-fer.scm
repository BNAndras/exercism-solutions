(import (rnrs))

(define two-fer
  (case-lambda
    (() (two-fer "you"))
    ((name) (format "One for ~A, one for me." name))))