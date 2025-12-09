# TodoApp Docker Image

## Docker Hub Repository
https://hub.docker.com/r/sydor101/todoapp

## Building local image
docker build -t todoapp .
## Running a container
docker run -d -p 8080:8080 --name todoapp todoapp
## If running from the Docker Hub
docker run -d -p 8080:8080 --name todoapp sydor101/todoapp:1.0.0
## Stopping a container
docker stop todoapp
docker rm todoapp

## Access to the app
Open in browser: http://localhost:8080

