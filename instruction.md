# ToDo App Dockerization

This guide explains how to build, run and test the ToDo app containerized using Docker.

---

## Docker Hub Repository
The application image can be found in my personal Docker Hub repository:  
**[ToDo App Docker Hub Repository](https://hub.docker.com/r/YOUR_DOCKER_HUB_USERNAME/todoapp)**

---

## How to Build the Docker Image

1. Clone the repository to your local system:
   ```bash
   git clone YOUR_REPOSITORY_URL
   cd YOUR_REPOSITORY_DIRECTORY
   ```

2. Build the Docker image. You can specify a Python version with the `--build-arg` option:
   ```bash
   docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
   ```

---

## How to Push the Docker Image to Docker Hub

1. Log in to your Docker Hub account (if not already logged in):
   ```bash
   docker login
   ```

2. Tag the Docker image for your Docker Hub repository:
   ```bash
   docker tag todoapp:1.0.0 YOUR_DOCKER_HUB_USERNAME/todoapp:1.0.0
   ```

3. Push the image to Docker Hub:
   ```bash
   docker push YOUR_DOCKER_HUB_USERNAME/todoapp:1.0.0
   ```

---

## How to Run the Container

1. Start the container using the following command:
   ```bash
   docker run -p 8080:8080 YOUR_DOCKER_HUB_USERNAME/todoapp:1.0.0
   ```

2. Open a web browser and access the application at:
   ```
   http://localhost:8080
   ```

---

## Notes
- The `ARG` instruction allows you to specify the Python base image version while building the image (default: `3.10`).
- The `EXPOSE 8080` instruction opens the port for the Django app to run on `0.0.0.0:8080`.
- Migration is handled during the Docker image build process (`RUN python manage.py migrate` in the Dockerfile).