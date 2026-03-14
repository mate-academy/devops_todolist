# Instructions

## Docker Hub

https://hub.docker.com/repository/docker/ellipsis1337/todoapp/general
## Build

```bash
docker build -f Dockerfile .  -t todoapp:1.0.0
```

## Run

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Stop

```bash
docker ps
docker stop <container_id>
```

## Access

Open http://localhost:8080 in your browser.
