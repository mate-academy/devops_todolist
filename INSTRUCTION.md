# ToDo Application - Docker Deployment Instructions

This project is a containerized Django ToDo application, optimized for deployment using Docker with a multi-stage build process.

## Docker Hub Repository
The application image is publicly available on [Docker Hub](https://hub.docker.com/repository/docker/wallian169/todoapp/)

## Running the Container

To pull the image from Docker Hub and start the container, use the following command:
```bash
docker run -d -p 8080:8080 --name todo-container wallian169/todoapp:1.0.0
```

## Building the Image Locally
To build the Docker image locally, run the following command in the project root directory:
```bash
docker build --build-arg PYTHON_VERSION=3.11 -t todoapp:1.0.0 .
```
## Accessing the Application in Browser

Once the container is running, the ToDo application is accessible via  web browser.

URL: http://localhost:8080
