# ToDo Application – Dockerized

## Docker Hub Repository

https://hub.docker.com/repository/docker/a1exic/todoapp

Image:
a1exic/todoapp:1.0.0

---

# Build and Push Instructions

## 1. Login to Docker Hub

docker login

## 2. Build the Docker image

docker build -t todoapp:1.0.0 .

## 3. Tag the image

docker tag todoapp:1.0.0 a1exic/todoapp:1.0.0

## 4. Push to Docker Hub

docker push a1exic/todoapp:1.0.0

---

# Run from Docker Hub

docker run -p 8080:8080 a1exic/todoapp:1.0.0

---

# Access Application

After running the container:

docker run -p 8080:8080 a1exic/todoapp:1.0.0

Open in browser:

http://localhost:8080

If running on remote host:

http://<host-ip>:8080

---

# Verification

Docker Hub image:
a1exic/todoapp:1.0.0

Pull test command:
docker pull a1exic/todoapp:1.0.0

PR URL:
https://github.com/mate-academy/devops_todolist/pull/260
