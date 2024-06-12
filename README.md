# ToDo App Dockerization

This repository contains a Dockerfile for the ToDo app

## Instructions

1. **Fork this repository:**

   Fork this repository to your GitHub account.

2. **Build the Docker image:**

   ```bash
   docker build -t todoapp --build-arg PYTHON_VERSION=3.8 .
   ```

3. **Run the Docker container:**

   ```bash
   docker run -p 8080:8080 todoapp
   ```

4. **Access the application:**

   Open your browser and navigate to [http://localhost:8080](http://localhost:8080).

## Docker Hub Repository

[todoapp](https://hub.docker.com/repository/docker/khyelyseieva/todoapp/general)
