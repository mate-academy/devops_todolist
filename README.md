### A link to my Dockerhub: Yakov Katsenelson (kagerou4649)
https://hub.docker.com/repository/docker/kagerou4649/todoapp/tags

# Todo App

Todo application built with Django.

## Setup

### 1. Build the Docker Image
### To build the Docker image, run the following command in the project root directory (where your `Dockerfile` is located):

docker build --build-arg PYTHON_VERSION=3.8 -t todoapp .

### 2. Run the Docker container
docker run -p 8080:8080 todoapp

### 3. Access the application
http://localhost:8080/
http://localhost:8080/api/

