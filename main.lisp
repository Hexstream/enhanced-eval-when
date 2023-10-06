(in-package #:enhanced-eval-when)

(defmacro eval-when (situations &body body)
  `(cl:eval-when ,(if (eq situations 't)
                      '(:compile-toplevel :load-toplevel :execute)
                      situations)
     ,@body))
