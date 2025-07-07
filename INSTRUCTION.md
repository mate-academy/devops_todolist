# INSTRUCTION.md

## Prerequisites

- Ensure Docker is installed and running on your system.

## Docker Hub Repository

The Docker image for the ToDo app is published to Docker Hub and is publicly available:

```
https://hub.docker.com/repository/docker/denyssheremeta/todoapp
```

## Pulling the Docker Image

Download the prebuilt image from Docker Hub:

```bash
# Pull the image from Docker Hub
docker pull denyssheremeta/todoapp:1.0.0
```

## Running the Container

Start the container in detached mode, mapping host port 8080 to container port 8080:

```bash
docker run -d --name todoapp -p 8080:8080 denyssheremeta/todoapp:1.0.0
```

## Accessing the Application

Open your web browser and navigate to:

```
http://localhost:8080
```

You should see the ToDo application interface, where you can add, view, and manage tasks.

---

_If you wish to stop and remove the container:_

```bash
docker stop todoapp && docker rm todoapp
```
