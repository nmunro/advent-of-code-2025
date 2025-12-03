(defsystem "advent-of-code-2025"
  :version "0.0.1"
  :author "nmunro"
  :license "BSD3-Clause"
  :description ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "day1")
                 (:file "main"))))
  :in-order-to ((test-op (test-op "advent-of-code-2025/tests"))))

(defsystem "advent-of-code-2025/tests"
  :author "nmunro"
  :license "BSD3-Clause"
  :depends-on ("advent-of-code-2025"
               :rove)
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for advent-of-code-2025"
  :perform (test-op (op c) (symbol-call :rove :run c)))
