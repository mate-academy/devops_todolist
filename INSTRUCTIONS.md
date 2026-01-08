# ToDo App – Docker Instructions

## Docker Image
The Docker image for this application is available on Docker Hub:
https://hub.docker.com/repository/docker/yaroslapelenychka/todoapp/general

Tag: `1.0.0`

---

## Requirements
- Docker installed
- Internet connection

---

## Build the Docker Image Locally

```bash
docker build -t yaroslapelenychka/todoapp .

docker build --build-arg PYTHON_VERSION=3.11 -t yaroslapelenychka/todoapp .

docker run -p 8080:8080 yaroslapelenychka/todoapp

http://localhost:8080

docker pull yaroslapelenychka/todoapp:1.0.0

docker run -p 8080:8080 yaroslapelenychka/todoapp:1.0.0