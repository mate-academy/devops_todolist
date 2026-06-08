# Docker Instructions

Docker Hub repository: `https://hub.docker.com/r/bobgor/todoapp`

## Build the image

```bash
docker build -t todoapp:1.0.0 .
```

## Run the container

```bash
docker run --rm -p 8080:8080 todoapp:1.0.0
```

## Access the application

Open a browser and go to:

```text
http://localhost:8080
```

## Push the image to Docker Hub

```bash
docker tag todoapp:1.0.0 bobgor/todoapp:1.0.0
docker push bobgor/todoapp:1.0.0
```
