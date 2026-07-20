# ToDo App
## Docker Hub

https://hub.docker.com/r/diashockh/todoapp

## Build

docker build -t todoapp:1.0.0 .

## Run

docker run -p 8080:8080 todoapp:1.0.0

## Push image to Docker Hub

docker tag todoapp:1.0.0 diashockh/todoapp:1.0.0
docker push diashockh/todoapp:1.0.0

## Open in browser

http://localhost:8080