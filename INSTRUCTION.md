# ToDo App — Docker Instructions

## Docker Hub

Docker Hub repository:
https://hub.docker.com/r/ericca0203/todoapp

Image:
ericca0203/todoapp:1.0.0

## Build the Docker image

Build the image with Python 3.10:

```bash
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
```

## Run the container
Run the application in detached mode:

```bash
docker run -d -p 8080:8080 --name todoapp-container todoapp:1.0.0
```
## Check the running container

```bash
docker ps
```

## Access the application

Open the following URL in your browser:

http://localhost:8080

## Pull the image from Docker Hub

```bash
docker pull ericca0203/todoapp:1.0.0
```

