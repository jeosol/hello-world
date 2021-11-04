(defpackage :hello-world/tests/hello-world-tests
  (:use #:cl)
  (:import-from :hello-world/src/hello-world
                #:greet-user)
  (:export #:test-hello-world))

(in-package :hello-world/tests/hello-world-tests)

;; NOTE: To run this test file, execute `(asdf:test-system :hello-world)' in your Lisp.

(fiveam:def-suite test-hello-world
  :description "Test for the hello-world system.")

(fiveam:def-suite* test-hello-world-run
  :description "Test hello-world with a name"
  :in test-hello-world)

(fiveam:test hello-world-runs
      (fiveam:is (string-equal "Hello John!" (greet-user))))

