# Django ToDo App - Docker Instructions

This document describes how to build, run, and access the Django ToDo application using Docker.

## Prerequisites

Before running the application, make sure you have:

- Docker installed
- Docker Desktop running

## Docker Hub Image

The application Docker image is available here:

https://hub.docker.com/r/userdockerana/todoapp

## Build Image

Build the Docker image from the project root directory:

```bash
docker build -t userdockerana/todoapp:1.0.0
```

## Run Container

Start the application container using the Docker image:

```bash
docker run -d --name todo-container -p 8080:8080 userdockerana/todoapp:1.0.0
```

The application will run in detached mode and expose port `8080`.

## Access Application

Open your browser and navigate to:

http://localhost:8080

## Stop Container

To stop the running container:

```bash
docker stop todo-container
```

To remove the stopped container:

```bash
docker rm todo-container
```