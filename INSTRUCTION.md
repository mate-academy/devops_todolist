# Django ToDo Docker Instructions

## Docker Hub Repository

https://hub.docker.com/r/your_dockerhub_username/todoapp

---

## Build Image

docker build -t todoapp:1.0.0 .

---

## Run Container

docker run -p 8080:8080 your_dockerhub_username/todoapp:1.0.0

---

## Access Application

Open in browser:

http://localhost:8080
