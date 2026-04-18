# ToDo App — Docker Instructions

## Docker Hub Repository

https://hub.docker.com/r/ten4i/todoapp

## Build the image

```bash
docker build -t ten4i/todoapp:1.0.0 .
```

## Run the container

```bash
docker run -d -p 8080:8080 todoapp:1.0.0
```

## Access the application

Open your browser and go to:

```
http://localhost:8080
```

## Pull and run from Docker Hub

```bashas
docker push ten4i/todoapp:1.0.0
docker Pull ten4i/todoapp:1.0.0
docker run -d -p 8080:8080 ten4i/todoapp:1.0.0
```
