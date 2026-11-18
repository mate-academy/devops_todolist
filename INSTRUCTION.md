# Docker ToDo Application

## Docker Hub Repository

https://hub.docker.com/repository/docker/anthony047/todoapp

## Build the Docker Image

```bash
docker build -t todoapp .
```

## Run the Application

```bash
docker run -d --name todo-container -p 8080:8080 todoapp
```

## Access the Application

Open your browser and navigate to:

http://localhost:8080

## Pull the Image from Docker Hub

```bash
docker pull anthony047/todoapp:1.0.0
```

## Run the Image from Docker Hub

```bash
docker run -d -p 8080:8080 anthony047/todoapp:1.0.0
```