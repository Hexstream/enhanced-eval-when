(in-package #:enhanced-eval-when)

(defun %expand (situations body)
  `(cl:eval-when ,(if (eq situations 't)
                      '(:compile-toplevel :load-toplevel :execute)
                      situations)
     ,@body))

(defmacro eval-when (situations &body body)
  (%expand situations body))

(defmacro enhanced-eval-when (situations &body body)
  (%expand situations body))

(defmacro eval-always (&body body)
  (%expand 't body))
