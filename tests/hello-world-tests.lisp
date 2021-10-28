(defpackage hello-world/tests/main
  (:use :cl
        :hello-world
        :fiveam))
(in-package :hello-world/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :hello-world)' in your Lisp.

(def-suite test-hello-world
  :description "Test for the hello-world system.")

(def-suite* test-hello-world-run
  :description "Test hello-world with a name"
  :in test-hello-world)

(test hello-world-runs
      (is (string-equal "Jerome" (hello-world:greet-user "Jerome"))))

