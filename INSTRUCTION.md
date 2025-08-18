## Docker Hub Repo
https://hub.docker.com/repository/docker/romanshevchyshyn1998/todoapp

## Build image locally
```bash
docker build -t todoapp:1.0.0 .
```

## Run container locally
```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Run container from Docker hub
```bash
docker run -p 8080:8080 romanshevchyshyn1998/todoapp:1.0.0
```
Open in browser http://localhost:8080
