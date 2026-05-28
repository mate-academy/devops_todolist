# ToDo App Dockerization

Link to Docker Hub repository: [https://hub.docker.com/r/petrosfas/todoapp](https://hub.docker.com/r/petrosfas/todoapp)

## How to build the image locally
To build the Docker image, run the following command in the directory containing the Dockerfile:
`docker build -t todoapp:1.0.0 .`

## How to tag and push the image to Docker Hub
First, tag the local image with your Docker Hub username:
`docker tag todoapp:1.0.0 petrosfas/todoapp:1.0.0`

Then, push the image to the repository:
`docker push petrosfas/todoapp:1.0.0`

## How to run the container
To start the container, use the following command:
`docker run -p 8080:8080 petrosfas/todoapp:1.0.0`

## How to access the application
Once the container is running, open your web browser and navigate to:
`http://localhost:8080`