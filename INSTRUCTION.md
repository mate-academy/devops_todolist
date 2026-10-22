# ToDo app in Docker

Docker Hub repository: https://hub.docker.com/r/viktor27094872/todoapp

## Build the image

    docker build -t todoapp:1.0.0 .

## Run the container

    docker run -p 8080:8080 todoapp:1.0.0

Or run the image from Docker Hub:

    docker pull viktor27094872/todoapp:1.0.0
    docker run -p 8080:8080 viktor27094872/todoapp:1.0.0

## Open the app in a browser

- Landing page: http://localhost:8080
- API: http://localhost:8080/api/

## Stop the container

Press Ctrl + C in the terminal.
