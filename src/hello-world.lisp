(uiop:define-package :hello-world/src/hello-world
  (:use :cl)
  (:export #:greet-user))

(in-package :hello-world/src/hello-world)

(defun greet-user (&optional (name "John"))
  "Print a greeting for a user."
  (let* ((name (or (nth 1 sb-ext:*posix-argv*) name))
         (greeting (format nil "Hello ~a!" (string-capitalize name))))
    greeting))

