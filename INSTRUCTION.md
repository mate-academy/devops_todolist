# ToDo App Docker
https://hub.docker.com/repository/docker/shvdw/todoapp/general
## Build image
docker build -t todoapp:1.0.0 .

## Run container
docker run -p 8080:8080 todoapp:1.0.0

## Docker Hub
docker push shvdw/todoapp:1.0.0

## Open in browser
http://localhost:8080