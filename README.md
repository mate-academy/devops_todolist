# Django ToDo List Docker Image

This repository contains a Dockerized version of a ToDo list web application built with Django.

## Docker Hub Repository

You can find the Docker image for this ToDo app on Docker Hub: [shu418/todoapp](https://hub.docker.com/repository/docker/shu418/todoapp/general)

```bash
docker pull shu418/todoapp:1.0.0
```

## Usage Instructions

### Building the Docker Image

```bash
docker build -t todoapp:1.0.0 .
```

### Running the Docker Container
```bash
docker run --name todoapp -p 8080:8080 todoapp:1.0.0
```

### Accessing the Application

Once the container is running, you can access the ToDo app in your browser at [http://localhost:8080](http://localhost:8080).