LISP ?=sbcl

# --load hello-world.asd \

build:
	$(LISP) --eval '(ql:quickload :hello-world)' \
		--eval '(asdf:make :hello-world)' \
		--eval '(quit)'

test:
	$(LISP) --eval '(asdf:test-system :hello-world)' \
		--eval '(quit)'

image:
	$(LISP) \
		--eval "(asdf:operate 'asdf:image-op 'hello-world)" \
		--eval '(quit)'
# creating images
# (asdf:operate-op 'asdf:image-op 'hello-world :force :all)

