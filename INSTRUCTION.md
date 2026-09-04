# Instructions — ToDo App Docker Image

## Docker Hub repository

https://hub.docker.com/r/sem4ik77/todoapp

Image: `sem4ik77/todoapp:1.0.0`

## Build the image locally

```bash
docker build -t todoapp .
```

Optionally override the Python base image version used in the build:

```bash
docker build --build-arg PYTHON_VERSION=3.11-slim -t todoapp .
```

## Run the container locally

```bash
docker run -p 8080:8080 todoapp
```

## Pull and run the published image from Docker Hub

```bash
docker pull sem4ik77/todoapp:1.0.0
docker run -p 8080:8080 sem4ik77/todoapp:1.0.0
```

## Access the application

Once the container is running, open your browser at:

http://localhost:8080
