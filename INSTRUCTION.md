# ToDo App Docker Instructions

Docker Hub image:

https://hub.docker.com/r/loki007777/todoapp

## Build image

```bash
docker build -t loki007777/todoapp:1.0.0 .
```

## Run container

```bash
docker run -p 8080:8080 loki007777/todoapp:1.0.0
```

## Open application

Open the application in your browser:

```text
http://localhost:8080
```

## Push image to Docker Hub

```bash
docker push loki007777/todoapp:1.0.0
```
