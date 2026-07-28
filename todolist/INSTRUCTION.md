# ToDo App

## Docker Hub Repository

https://hub.docker.com/r/YOUR_DOCKERHUB_USERNAME/todoapp

Replace aezakmi565 with your Docker Hub username.

---

## Build the Docker image

```bash
docker build --build-arg PYTHON_VERSION=3.12 -t todoapp:1.0.0 .
```

---

## Run the container

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

Or run it in detached mode:

```bash
docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
```

---

## Access the application

After the container starts, open your browser and navigate to:

http://localhost:8080

---

## Docker Hub Image

If you want to use the image from Docker Hub:

```bash
docker pull aezakmi565/todoapp:1.0.0
docker run -p 8080:8080 aezakmi565/todoapp:1.0.0
```
