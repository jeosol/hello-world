(uiop:define-package :hello-world/tests/hello-world-tests
  (:use :cl
        :fiveam)
  (:export #:test-hello-world)
  (:import-from :hello-world
                #:greet-user))

(in-package :hello-world/tests/hello-world-tests)

;; NOTE: To run this test file, execute `(asdf:test-system :hello-world)' in your Lisp.

(def-suite test-hello-world
  :description "Test for the hello-world system.")

(def-suite* test-hello-world-run
  :description "Test hello-world with a name"
  :in test-hello-world)

(test hello-world-runs
      (is (string-equal "Hello John!" (greet-user))))

