(defsystem "hello-world"
  :version "1.0.0"
  :author "Jerome E. Onwunalu, PhD <jeronwunalu@gmail.com>"
  :class :package-inferred-system
  :depends-on ("hello-world/src/hello-world")
  :components ((:file "package"))
  ;; :components ((:module "src"
  ;;               :components
  ;;               ((:file "main"))))
  :build-operation "program-op"
  :build-pathname  "hello-world"
  :entry-point     "hello-world/src/hello-world:greet-user"
  ;:image-op "hello-world.core"
  :description "Simple project to learn Gitlab CI/CD."
  :in-order-to ((test-op (test-op "hello-world/tests"))))

(defsystem "hello-world/tests"
  :version "1.0.0"
  :defsystem-depends-on ("fiveam-asdf")
  :depends-on ("fiveam"
               "hello-world"
               "hello-world/tests/hello-world-tests"
               "hello-world/tests/package")
  :class :package-inferred-fiveam-tester-system
  :test-package :hello-world/tests/package
  :test-names '(:test-hello-world)
  :num-checks 2
  :description "Test system for hello-world"
  :perform (test-op (op c) (uiop:symbol-call :fiveam :run!
                                             (find-symbol* :test-hello-world :hello-world/tests/package))))
