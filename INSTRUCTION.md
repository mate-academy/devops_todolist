# ToDo App Docker Instructions

## Docker Hub Repository

https://hub.docker.com/r/grom201/todoapp

---

## Build image

```bash
docker build -t todoapp:1.0.0 .
```

---

## Run container

```bash
docker run -p 8080:8080 grom201/todoapp:1.0.0
```

---

## Access application

Open browser:

http://localhost:8080

## Push image to Docker Hub

```bash
docker login

docker tag todoapp:1.0.0 grom201/todoapp:1.0.0

docker push grom201/todoapp:1.0.0
```