# ToDo App — Docker Instructions

## Docker Hub Repository

Docker image: https://hub.docker.com/repository/docker/artemgrishko1/todoapp

Image tag: `1.0.0`

## Prerequisites

- Docker installed and running.
- Access to the Docker Hub image.

## Build the Docker Image

From the project root directory, run:

```bash
docker build -t todoapp:1.0.0 .
```

## Push the Image to Docker Hub

Log in to Docker Hub:

```bash
docker login
```

Tag the image:

```bash
docker tag todoapp:1.0.0 YOUR_DOCKERHUB_USERNAME/todoapp:1.0.0
```

Push the image:

```bash
docker push YOUR_DOCKERHUB_USERNAME/todoapp:1.0.0
```

## Run the Container

Pull the image:

```bash
docker pull YOUR_DOCKERHUB_USERNAME/todoapp:1.0.0
```

Start the container:

```bash
docker run -d --name todoapp-container -p 8080:8080 YOUR_DOCKERHUB_USERNAME/todoapp:1.0.0
```

## Access the Application

Open the following URL in your browser:

http://localhost:8080

## Useful Commands

View running containers:

```bash
docker ps
```

View application logs:

```bash
docker logs todoapp-container
```

Stop the container:

```bash
docker stop todoapp-container
```

Remove the stopped container:

```bash
docker rm todoapp-container
```