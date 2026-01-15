# ToDo App Docker Instructions

This repository contains a Dockerized Django ToDo application.

## Docker Hub Repository
You can find the built image here:
https://hub.docker.com/repository/docker/exodus7707/todoapp/general

## How to build the image locally
To create the image, run the following command in the project root directory:
```bash
docker build -t todoapp:1.0.0 .
```

## How to run the container
```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Accessing the application
Once the container is running, the application will be accessible in your browser at:
http://localhost:8080 or http://127.0.0.1:8080/