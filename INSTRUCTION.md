# Django ToDo App in Docker

## Docker Hub Repository
The application image is available here:
https://hub.docker.com/repository/docker/ariohdk/todoapp (tag: `1.0.0`)

## Build (optional, local build)
If you want to build the image locally instead of pulling from Docker Hub:

docker build --build-arg PYTHON_VERSION=3.12 -t todoapp:1.0.0 .

docker run --name todoapp -p 8080:8080 -d ariohdk/todoapp:1.0.0

http://localhost:8080 