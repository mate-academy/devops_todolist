# ToDo Django App - Docker Guide

## Docker Hub Repository
[Link to Docker Hub Image](https://hub.docker.com/r/gradman/todoapp)

## How to Build the Image
To build the Docker image locally from the Dockerfile, run the following command in the project root directory:

```bash
docker build -t todoapp:1.0.0 .
```
## How to Run the Container
To start the application container using the image from Docker Hub, run:

```bash
docker run -d -p 8080:8080 --name todoapp-container gradman/todoapp:1.0.0
```
## How to Access the Application
Once the container is running, open your web browser and navigate to:


http://localhost:8080