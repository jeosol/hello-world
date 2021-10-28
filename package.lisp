(uiop:define-package #:hello-world
    (:use :cl)
  (:use-reexport :hello-world/src/hello-world)
  (:export #:greet-user))
