# Instructions for Running the ToDo App

## Docker Hub Repository

The Docker image for this application is published and available on Docker Hub:
- **Repository**: [https://hub.docker.com/r/leonetsbogdan/todoapp](https://hub.docker.com/r/leonetsbogdan/todoapp)
- **Tag**: `1.0.0`
- **Full image name**: `leonetsbogdan/todoapp:1.0.0`

---

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed and running on your machine.

---

## 1. Option A: Pull and Run the Pre-built Image from Docker Hub

### Pull the image
```bash
docker pull leonetsbogdan/todoapp:1.0.0
```

### Run the container
```bash
docker run -d -p 8080:8080 --name todoapp leonetsbogdan/todoapp:1.0.0
```

---

## 2. Option B: Build and Run Locally from Source

### Build the Docker image
Navigate to the root directory of the project (where the `Dockerfile` is located) and run:
```bash
docker build -t todoapp .
```

*(Optional) Build with custom Python version argument:*
```bash
docker build --build-arg PYTHON_VERSION=3.12.14 -t todoapp .
```

### Run the container
```bash
docker run -d -p 8080:8080 --name todoapp todoapp
```

---

## 3. Accessing the Application

Once the container is running:

1. Open your web browser.
2. Navigate to:
   - **Landing Page / App**: [http://localhost:8080/](http://localhost:8080/) or [http://127.0.0.1:8080/](http://127.0.0.1:8080/)
   - **API**: [http://localhost:8080/api/](http://localhost:8080/api/)
   - **Admin Panel**: [http://localhost:8080/admin/](http://localhost:8080/admin/)

---

## 4. Stopping and Cleaning Up

To stop the running container:
```bash
docker stop todoapp
```

To remove the stopped container:
```bash
docker rm todoapp
```
