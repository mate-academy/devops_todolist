# ToDo App — Docker Instructions

## Docker Hub Repository

https://hub.docker.com/repository/docker/dmytrykell/todoapp

## Build the Docker Image

From the project root, run:

docker build -f Dockerfile -t todoapp:1.0.0 .

## Run the Container

docker run --rm -p 8080:8080 todoapp:1.0.0

## Access the Application

Open the following URL in your browser:

http://localhost:8080

## Pull the Image from Docker Hub

docker pull dmytrykell/todoapp:1.0.0

## Run the Image from Docker Hub

docker run --rm -p 8080:8080 dmytrykell/todoapp:1.0.0