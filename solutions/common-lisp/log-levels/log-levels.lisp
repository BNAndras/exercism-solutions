(defpackage :log-levels
  (:use :cl)
  (:export :log-message :log-severity :log-format))

(in-package :log-levels)

(defun log-message (log-string)
  (let*  ((delimiter (search ": " log-string))
          (start (+ delimiter 2)))
   (subseq log-string start)))

(defun log-severity (log-string)
  (let* ((delimiter (search ": " log-string))
         (end (- delimiter 1))
         (level (subseq log-string 1 end)))
   (cond ((string-equal level "info") :everything-ok)
         ((string-equal level "warn") :getting-worried)
         ((string-equal level "ohno") :run-for-cover)
         (t :its-too-late))))

(defun log-format (log-string)
    (let* ((message (log-message log-string))
           (severity (log-severity log-string))
           (transform (case severity ((:everything-ok) #'string-downcase)
                            ((:getting-worried) #'string-capitalize)
                            ((:run-for-cover) #'string-upcase)
                            (t identity))))
          (funcall transform message)))
