# [Django ToDo list Docker image](https://hub.docker.com/r/amylnikova/todoapp)

Docker image for running a Todo app built with Django. This image includes all necessary dependencies and exposes port 8080 for web access.

---

# 📌 TodoApp Docker Instructions

This document provides instructions on how to download, run, and use the `todoapp` Docker container from Docker Hub.

---

## 1️⃣ Prerequisites

Ensure that you have Docker installed on your system. If not, you can download and install it from:  
[https://www.docker.com/get-started](https://www.docker.com/get-started)

---

## 2️⃣ Pull the Docker Image

To download the latest version of the `todoapp` image from Docker Hub, run:  

```sh
docker pull amylnikova/todoapp:1.0.0
```


---

## 3️⃣ Running the Container

To start a container from the image, run:

```sh
docker run -d -p 8080:8080 --name my-todoapp amylnikova/todoapp:1.0.0
```

- `-d` runs the container in detached mode (in the background).  
- `-p 8080:8080` maps port **8080** on your machine to port **8080** in the container.  
- `--name my-todoapp` assigns a custom name to the running container.  

---

## 4️⃣ Checking Running Containers

To verify that the container is running, use:

```sh
docker ps
```

---

## 5️⃣ Access the Application

After running the container, open your browser and go to:

```sh
http://localhost:8080
```

If running on a remote server, replace localhost with the server’s IP address.

---

## 6️⃣ Stopping and Removing the Container

To stop the running container:

```sh
docker stop my-todoapp
```

To remove the container:

```sh
docker rm my-todoapp
```

To remove the image:

```sh
docker rmi amylnikova/todoapp:1.0.0
```

---
