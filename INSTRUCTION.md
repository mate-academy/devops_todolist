# ToDo app

Docker Hub: https://hub.docker.com/r/ovasylkov/todoapp

## Build

```bash
docker build -t todoapp:1.0.0 .
```

## Run

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

Open http://127.0.0.1:8080/ in your browser.

## Run from Docker Hub

```bash
docker pull ovasylkov/todoapp:1.0.0
docker run -p 8080:8080 ovasylkov/todoapp:1.0.0
```