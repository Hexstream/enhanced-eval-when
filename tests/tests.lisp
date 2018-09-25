(cl:defpackage #:enhanced-eval-when_tests
  (:use #:cl #:parachute)
  (:shadowing-import-from #:enhanced-eval-when #:eval-when))

(cl:in-package #:enhanced-eval-when_tests)

(defmacro test-passthrough (situations)
  `(is equal '(cl:eval-when ,situations do-it)
       (macroexpand-1 '(eval-when ,situations do-it))))

(define-test "enhanced-eval-when"
  (is equal
      (macroexpand-1 '(eval-when t do-it))
      '(cl:eval-when (:compile-toplevel :load-toplevel :execute)
        do-it))
  (test-passthrough '())
  (test-passthrough '(:compile-toplevel))
  (test-passthrough '(:load-toplevel))
  (test-passthrough '(:execute))
  (test-passthrough '(:compile-toplevel :load-toplevel))
  (test-passthrough '(:load-toplevel :execute))
  (test-passthrough '(:compile-toplevel :execute)))
