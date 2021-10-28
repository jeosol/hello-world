(defpackage hello-world/src/hello-world
  (:use :cl)
  (:export #:greet-user))
(in-package :hello-world/src/hello-world)

(defun greet-user (name)
  (format nil "~&Hello ~a" (string-capitalize name)))

