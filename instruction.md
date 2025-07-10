## Docker Hub Repo

https://hub.docker.com/repository/docker/vitaliich/todoapp

## Build image locally

```bash
docker build -t todoapp:1.0.0 .
```

## Run container locally

docker run -p 8080:8080 todoapp:1.0.0

## Run container from Docker hub

docker run -p 8080:8080 vitaliich/todoapp:1.0.0
Open in browser http://localhost:8080
