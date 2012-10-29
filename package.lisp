(cl:defpackage #:enhanced-eval-when
  (:nicknames #:e-eval-when
              #:eval-always)
  (:use #:cl)
  (:shadow #:eval-when)
  (:export #:eval-when
           #:enhanced-eval-when
           #:eval-always))
