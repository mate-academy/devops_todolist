# ToDo App in Docker

## Docker Hub Repository
[Link to Docker Hub](https://hub.docker.com/r/alexkaie/todoapp)

## Build the Image
```sh
docker build --build-arg PYTHON_VERSION=3.11 -t todoapp .
```

## Run container

```sh
docker run -d -p 8080:8080 todoapp  
```

## Open in browser

0.0.0.0:8080