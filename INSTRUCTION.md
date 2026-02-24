# Django ToDo Docker Instructions

## Docker Hub Repository

https://hub.docker.com/r/petliuk/devops_todolist

---

## 1️⃣ Build Docker Image

Build the Docker image with the required tag:

docker build -t petliuk/devops_todolist:1.0.0 .

---

## 2️⃣ Login to Docker Hub

Login to your Docker Hub account:

docker login

---

## 3️⃣ Push Image to Docker Hub

Push the image to your personal repository:

docker push petliuk/devops_todolist:1.0.0

---

## 4️⃣ Run the Container

Run the container locally:

docker run -p 8080:8080 petliuk/devops_todolist:1.0.0

Explanation:

- `-p 8080:8080` maps container port 8080 to your local machine.
- The Django server runs on `0.0.0.0:8080` inside the container.
- After running the container, the application becomes доступною у браузері.

---

## 5️⃣ Access the Application

Open your browser and go to:

http://localhost:8080