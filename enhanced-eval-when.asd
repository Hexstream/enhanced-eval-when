(asdf:defsystem #:enhanced-eval-when

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  :license "Unlicense"

  :description "Provides an enhanced EVAL-WHEN macro that supports (eval-when t ...) as a shorthand for (eval-when (:compile-toplevel :load-toplevel :execute) ...), addressing concerns about verbosity. As EVAL-WHEN with all situations specified is used an overwhelming majority of the time by most users, this shorthand can really come handy!"

  :depends-on ()

  :version "2.0"
  :serial cl:t
  :components ((:file "package")
	       (:file "main"))

  :in-order-to ((asdf:test-op (asdf:test-op #:enhanced-eval-when_tests))))
