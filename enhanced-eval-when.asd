(asdf:defsystem #:enhanced-eval-when

  :author "Jean-Philippe Paradis <hexstream@gmail.com>"

  ;; See the UNLICENSE file for details.
  :license "Public Domain"

  :description "enhanced-eval-when provides an enhanced EVAL-WHEN macro that supports (eval-when t ...) as a shorthand for (eval-when (:compile-toplevel :load-toplevel :execute) ...), addressing concerns about verbosity. An ENHANCED-EVAL-WHEN alias is also supported, as well as an EVAL-ALWAYS macro and package nickname, for good measure."

  :depends-on ()

  :version "1.0"
  :serial cl:t
  :components ((:file "package")
	       (:file "main")))
