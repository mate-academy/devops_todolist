## Link Docker Hub

https://hub.docker.com/r/khrystyna079/todoapp

## Build image

```bash
docker build -t todoapp .
```

## Run container

```bash
docker run -p 8080:8080 todoapp
```

## Open in browser:

http://localhost:8080

## Pull image from Docker Hub

```bash
docker pull khrystyna079/todoapp:1.0.0
```

## Run image from Docker Hub

```bash
docker run -p 8080:8080 khrystyna079/todoapp:1.0.0
```