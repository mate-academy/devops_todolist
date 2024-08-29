# ToDo App

## Docker Hub Repository

You can find the Docker image for this app at the following link:
[https://hub.docker.com/r/poznianski/todoapp](https://hub.docker.com/r/poznianski/todoapp)

## Building the Docker Image

To build the Docker image, use the following command:

`docker build -t poznianski/todoapp:1.0.0 .`

To run the Docker container, use the following command:

`docker run -p 8080:8080 poznianski/todoapp:1.0.0`

Once the container is running, you can access the application via your browser at:

`http://localhost:8080`
