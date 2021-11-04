FROM fukamachi/sbcl:2.1.9 as base-image

ADD https://github.com/jeosol/hello-world.git ~/quicklisp/local-projects/hello-world

COPY create-hello-world-core.lisp .
COPY create-hello-world-core.sh .

RUN chmod +x ./create-hello-world-core.sh

RUN ./create-hello-world-core.sh

ENTRYPOINT ["./start-hello-world.sh"]
