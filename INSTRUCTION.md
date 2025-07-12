# Django ToDo App - Docker Instructions

## Docker Hub
https://hub.docker.com/repository/docker/YOUR_USERNAME/todoapp

## Build the image

```bash
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
