## Link to image on Dockerhub
    https://hub.docker.com/repository/docker/pasha0/todoapp/general

## Build and run the container
For building the container run next:

    docker build -f Dockerfile . -t todoapp:1.0.0

For running the container download image and run next:

    docker run -p 8080:8080 todoapp:1.0.0

## Accessing the application via a browser
For accessing the application via a browser go to [[link](http://localhost:8080/)]