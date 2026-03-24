## Link to todoapp image:
https://hub.docker.com/repository/docker/andriis9/todoapp/general

## Running container

you can pull image from repository or build it from dockerfile(instructions in Building section)

on your machine must be installed docker
1.  Pulling image from repository
    ````
    docker pull andriis9/todoapp:1.0.0
    ````
2. Run container from image
    ````
   docker run -d -p 8080:8080 andriis9/todoapp:1.0.0
   ````

## Building image
Image based on python images

1. Run this command in directory where dockerfile is:
    ````
   docker build  -t name:tag .
   ````
   to specify on which version it will be based use this:
    ````
   docker build --build-arg PYTHON_VERSION=2.0.0 -t name:tag .
   ````
## Accessing application 
You can access app from local browser via this url: http://localhost:8080

