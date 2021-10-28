(defsystem "hello-world"
  :version "0.1.0"
  :author "Jerome E. Onwunalu, PhD <jeronwunalu@gmail.com>"
  :license "Thedibia LLC"
  :class :package-inferred-system
  :depends-on ("hello-world/src/hello-world")
  :components ((:file "package"))
  ;; :components ((:module "src"
  ;;               :components
  ;;               ((:file "main"))))
  :build-operation "program-op"
  :build-pathname  "./bin/hello-world"
  :entry-point     "hello-world/src/hello-world:greet-user"
  :description "Simple project to learn Gitlab CI/CD."
  :in-order-to ((test-op (test-op "hello-world/tests"))))

(defsystem "hello-world/tests"
  :author "Jerome E. Onwunalu, PhD <jeronwunalu@gmail.com>"
  :license "Thedibia LLC"
  :defsystem-depends-on ("fiveam-asdf")
  :depends-on ("fiveam"
               "hello-world"
               "hello-world/tests/hello-world-tests"
               "hello-world/tests/package")
  :class :package-inferred-fiveam-tester-system
  :test-package :hello-world/tests/package
  :test-names '(:test-hello-world)

  ;; We do not use a :components property because of the :class option above
  ;; :components ((:module "tests"
  ;;               :components
  ;;               ((:file "hello-world-tests"))))
  :description "Test system for hello-world"
  :perform (test-op (op c) (uiop:symbol-call :fiveam :run!
                                             (find-symbol* :test-hello-world :hello-world/tests/package))))
