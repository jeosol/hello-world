FROM tdba/simapi:sbcl_2.1.9 as base-image

# clone the repository
RUN git clone https://github.com/jeosol/hello-world.git /root/quicklisp/local-projects/hello-world

# copy the scripts
COPY create-hello-world-core.lisp .
COPY create-hello-world-core.sh .
COPY start-hello-world.sh .

# make the executable
RUN chmod +x ./create-hello-world-core.sh
RUN chmod +x ./start-hello-world.sh

# run script to create hello-world.core file
RUN ./create-hello-world-core.sh

# set the startup script when the container is started
ENTRYPOINT ["./start-hello-world.sh"]
