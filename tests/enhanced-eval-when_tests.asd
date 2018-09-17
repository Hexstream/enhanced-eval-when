(asdf:defsystem #:enhanced-eval-when_tests

  :author "Jean-Philippe Paradis <hexstream@gmail.com>"

  ;; See the UNLICENSE file for details.
  :license "Public Domain"

  :description "ENHANCED-EVAL-WHEN unit tests."

  :depends-on ("enhanced-eval-when"
               "parachute")

  :serial cl:t
  :components ((:file "tests"))

  :perform (asdf:test-op (op c) (uiop:symbol-call '#:parachute '#:test '#:enhanced-eval-when_tests)))
