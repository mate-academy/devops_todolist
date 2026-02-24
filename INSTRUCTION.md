# Django ToDo Docker Instructions

## Docker Hub Repository

https://hub.docker.com/r/petliuk/todoapp

---

## 1️⃣ Build Docker Image

Build the Docker image with the required tag:

docker build -t petliuk/todoapp:1.0.0 .

---

## 2️⃣ Login to Docker Hub

docker login

---

## 3️⃣ Push Image

docker push petliuk/todoapp:1.0.0

---

## 4️⃣ Run the Container

docker run -p 8080:8080 petliuk/todoapp:1.0.0

Explanation:
- `-p 8080:8080` maps container port 8080 to your local machine.
- Django runs on `0.0.0.0:8080`.

---

## 5️⃣ Access the Application

http://localhost:8080