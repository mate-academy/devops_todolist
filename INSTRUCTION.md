## Docker Hub repository win an app image:
https://hub.docker.com/repository/docker/andriyshafran/todoapp/general

## How to build image:
```
docker build -t todoapp:1.0.0 .
```

## How to run container using local image:
```
docker run -p 8080:8080 todoapp:1.0.0
```
# How to run container using image from DockerHub:
```
docker run -p 8080:8080 andriyshafran/todoapp
```

## Access the application via a browser:

```
http://127.0.0.1:8080
```