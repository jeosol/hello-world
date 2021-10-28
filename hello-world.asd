(defsystem "hello-world"
  :version "0.1.0"
  :author "Jerome E. Onwunalu, PhD <jeronwunalu@gmail.com>"
  :license "Thedibia LLC"
  :class :package-inferred-system
  :depends-on ("hello-world/src/hello-world")
  ;; :components ((:module "src"
  ;;               :components
  ;;               ((:file "main"))))
  :description "Simple project to learn Gitlab CI/CD."
  :in-order-to ((test-op (test-op "hello-world/tests"))))

(defsystem "hello-world/tests"
  :author "Jerome E. Onwunalu, PhD <jeronwunalu@gmail.com>"
  :license "Thedibia LLC"
  :class :package-inferred-system
  :depends-on ("hello-world"
               "fiveam"
               "hello-world/test/hello-world-tests")
  ;; :components ((:module "tests"
  ;;               :components
  ;;               ((:file "main"))))
  :description "Test system for hello-world"
  :perform (test-op (op c) (symbol-call :fiveam :run1
                                        (find-symbol* :hello-world :hello-world/tests))))