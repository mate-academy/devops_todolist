# Instruction

## My personal Docker Hub repository:
[todoapp](https://hub.docker.com/repository/docker/rmarianna/todoapp/)

## Build the Docker Image:
```
docker build -t rmarianna/todoapp:1.0.0 .
```

## Push the Image to Docker Hub

Log in to *Docker Hub*:

```
docker login
```

Push image:
```
docker push rmarianna/todoapp:1.0.0
```

## Run the container
```
docker run --name todoapp -d -p 8080:8080 rmarianna/todoapp:1.0.0
```

## Access the application via Browser

1. Open your web browser.
2. Go to http://localhost:8080 or http://127.0.0.1:8080