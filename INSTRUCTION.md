# ToDo App Dockerization

Link to Docker Hub repository: [https://hub.docker.com/repository/docker/petrosfas/todoapp/general]

## How to build the image locally
To build the Docker image, run the following command in the directory containing the Dockerfile:
`docker build -t todoapp .`

## How to run the container
To start the container, use the following command:
`docker run -p 8080:8080 todoapp`

## How to access the application
Once the container is running, open your web browser and navigate to:
`http://localhost:8080`