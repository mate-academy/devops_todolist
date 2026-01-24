# Instructions for Dockerizing the Django ToDo App

## Docker Hub Repository

The Docker image for this application is available at:
[https://hub.docker.com/r/salabam/todoapp](https://hub.docker.com/r/salabam/todoapp)

## Building the Docker Image

1. Clone the repository:
   git clone <repository-url>
   cd devops_todolist

2. Build the Docker image:
   docker build -t todoapp:1.0.0 --build-arg PYTHON_VERSION=3.8 .

## Running the Docker Container

1. Start the container:
   docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0

2. Verify the container is running:
   docker ps

## Accessing the Application

- Open your browser and navigate to:
  [http://localhost:8080](http://localhost:8080)

## Additional Information

- To stop the container:
  docker stop todoapp

- To remove the container:
  docker rm todoapp

- To remove the image:
  docker rmi todoapp:1.0.0