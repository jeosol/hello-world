FROM tdba/simapi:sbcl_2.1.9 as base-image

#ADD https://github.com/jeosol/hello-world.git /root/quicklisp/local-projects/
#ADD https://github.com/jeosol/hello-world.git /root/src/projects/hello-world
#RUN git clone
RUN git clone https://github.com/jeosol/hello-world.git /root/src/projects/hello-world
#COPY src /root/src/projects/
COPY create-hello-world-core.lisp .
COPY create-hello-world-core.sh .
COPY start-hello-world.sh .

RUN chmod +x ./create-hello-world-core.sh
RUN chmod +x ./start-hello-world.sh

RUN ls -ltr /root/src/projects/
RUN ls -ltr

RUN ./create-hello-world-core.sh

ENTRYPOINT ["./start-hello-world.sh"]
