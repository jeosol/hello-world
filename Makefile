LISP ?=sbcl

# --load hello-world.asd \
build:
    $(LISP) --eval '(ql:quickload :hello-world)' \
	--eval '(asdf:make :hello-world)' \
	--eval '(quit)'
