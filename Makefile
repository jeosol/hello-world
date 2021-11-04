LISP ?=sbcl

# --load hello-world.asd \

build:
	$(LISP) --eval '(asdf:make :hello-world)' \
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

docker:
	@echo "Building hello-world docker image ..."
	docker image build -t hello-world -f Dockerfile . 
	@echo "Built hello-world image ..."

docker-nocache:
	@echo "Building hello-world docker image ..."
	docker image build --no-cache -t hello-world -f Dockerfile . 
	@echo "Built hello-world image ..."

run-image:
	@echo "Running the hello-world container ..."
	docker run --rm --name hello-world -it hello-world:latest

