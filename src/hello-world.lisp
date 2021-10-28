(uiop:define-package #:hello-world/src/hello-world
  (:use :cl)
;  (:local-nicknames (:hw :hello-world/src/hello-world))
  (:export #:greet-user))
(in-package :hello-world/src/hello-world)

(defun greet-user (&optional (name "John"))
  (let* ((name (or (nth 1 sb-ext:*posix-argv*) name)))
    (format nil "~&Hello World ~a" (string-capitalize name))))

