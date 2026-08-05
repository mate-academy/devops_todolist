# Django ToDo Docker Instructions

## Docker Hub image

Docker Hub repository:

https://hub.docker.com/r/boz1k/todoapp


## Build image

Build Docker image:

```bash
docker build -t todoapp:1.0.0 .

## Run container

Start container:

```bash
docker run -d \
--name todoapp \
-p 8080:8080 \
todoapp:1.0.0
