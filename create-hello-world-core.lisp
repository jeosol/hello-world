(pushnew (truename "/root/src/projects/") ql:*local-project-directories*)
(ql:register-local-projects)
(ql:quickload "hello-world")
(sb-ext:save-lisp-and-die "hello-world.core" :executable nil)
