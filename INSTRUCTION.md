# Django ToDo App — Docker Instructions

## Docker Hub

https://hub.docker.com/r/dmytrotverdun/todoapp

## Build the Docker Image

```bash
docker build -t todoapp:1.0.0 .
```

## Run the Container

```bash
docker run -d --name todo-container -p 8080:8080 todoapp:1.0.0
```

## Run from Docker Hub

```bash
docker run -d --name todo-container -p 8080:8080 dmytrotverdun/todoapp:1.0.0
```

## Access the Application

http://localhost:8080