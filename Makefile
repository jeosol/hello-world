LISP ?=sbcl

# --load hello-world.asd \

build:
	$(LISP) \
		--eval '(ql:quickload :hello-world)' \
		--eval '(asdf:make :hello-world)' \
		--eval '(quit)'

test:
	$(LISP) \
		--eval '(ql:quickload :hello-world/tests)' \
		--eval '(asdf:test-system :hello-world)' \
		--eval '(quit)'
