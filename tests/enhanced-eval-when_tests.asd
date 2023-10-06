(asdf:defsystem #:enhanced-eval-when_tests

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  :license "Unlicense"

  :description "enhanced-eval-when unit tests."

  :depends-on ("enhanced-eval-when"
               "parachute")

  :serial cl:t
  :components ((:file "tests"))

  :perform (asdf:test-op (op c) (uiop:symbol-call '#:parachute '#:test '#:enhanced-eval-when_tests)))
