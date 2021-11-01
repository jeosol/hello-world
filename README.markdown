# Hello-World - Common Lisp Hello World project.
This is a simple Common Lisp project that I built for testing and demonstrating different software technologies including unit testing, devops CI/CD, etc.

The project contains a system **hello-world** and another system **hello-world/tests** with runs the test for the system. Currently the application doesn't do much and it is intentionally kept that way. The focus is not on the system but how the required building blocks to achieve unit testing, devops, etc, can be achieved.

## Usage
### Cloning the repository

The reposity can be cloned into your **quicklisp/local-projects** directory (as shown below) or somewhere where quicklisp/asdf can find it.
```
git clone https://github.com/jeosol/hello-world.git ~/quicklisp/local-projects/hello-world
```
The above command will clone the repository into the **hello-world** under folder under the **local-projects** directory.

### Load
You can start a CL REPL (e.g., using SBCL) and load the hello-world project by issuing the following command:
```
(ql:quicklisp :hello-world)
```
### Unit Testing and Creating Executables
This section describes unit testing in the project. Testing is performed with the **fiveam** library, which is a commn testing library used by many CL projects. 

A Makefile containing **build** and **test** targets is included in the project folder.

#### Running the **test** target
The project uses the [**fiveam**](https://common-lisp.net/project/fiveam/) regression testing framework. We can run the tests defined in the project using one of the following options:

* Shell command (from within project directory):
```
make test
```

* Using shell (from any directory):
```
make -f ~/quicklisp/local-projects/hello-world/Makefile test
```

* From a REPL
```
(asdf:test-system "hello-world")
```

#### Running the **build** target
The build target uses asdf to create an executable named **hello-world** in the **bin** of the project. We can create the executable artifact using one of the following options:

* Shell command (from within project directory):
```
make build
```

* Shell command (from any directory):
```
make -f ~/quicklisp/local-projects/hello-world/Makefile build
```

* From a REPL:
```
(asdf:make "hello-world")
```

Please see the **hello-world.asd** file for the [**ASDF**](https://common-lisp.net/project/asdf/) keywords facilitates creating executables.

## Installation

## Author

* jeosol

## Copyright



## License


