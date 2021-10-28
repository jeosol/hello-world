(uiop:define-package #:hello-world/src/hello-world
  (:use :cl)
;  (:local-nicknames (:hw :hello-world/src/hello-world))
  (:export #:greet-user))
(in-package :hello-world/src/hello-world)

(defun greet-user (&optional (name "John"))
  (format nil "~&Hello World ~a" (string-capitalize name)))

