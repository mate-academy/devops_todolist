# ToDo app in Docker

## Docker Hub repository

https://hub.docker.com/r/juliaaqa/todoapp

## Build the image

```
docker build -t todoapp:1.0.0 .
```

## Run the container

```
docker run -p 8080:8080 todoapp:1.0.0
```

## Push the image to Docker Hub

```
docker login
docker tag todoapp:1.0.0 juliaaqa/todoapp:1.0.0
docker push juliaaqa/todoapp:1.0.0
```

## Run the image from Docker Hub

```
docker pull juliaaqa/todoapp:1.0.0
docker run -p 8080:8080 juliaaqa/todoapp:1.0.0
```

## Access the application

Open in your browser:

- Landing page: http://localhost:8080/
- API: http://localhost:8080/api/
