# Django ToDo App Containerization

This repository contains a containerized Django ToDo application using Docker Multi-stage builds.

## Docker Hub Repository
You can find the public Docker image here:
* **Image Link:** [https://hub.docker.com/repository/docker/poikka001/todoapp/general](https://hub.docker.com/repository/docker/poikka001/todoapp/general)
* **Pull Command:** `docker pull poikka001/todoapp:1.0.0`

## Instructions for Running the Container
To start the Django application inside the container and bind it to your local machine, execute:
```bash
docker run -p 8080:8080 --name todo-app-run todoapp:1.0.0
```

## How to Access the Application
Once the container is running and logs show that the server has started successfully:
1. Open your web browser.
2. Navigate to: **http://localhost:8080**
3. You can now use the ToDo application interactively.
