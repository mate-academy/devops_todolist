# Django ToDo list

This is a to-do list web application with basic features of most web apps, i.e., accounts/login, API, and interactive UI.

## Docker Hub image

https://hub.docker.com/repository/docker/justoleja9/todoapp

## Build the image

```bash
docker build --build-arg PY_VER=3.8 -t todoapp:1.0.0 .
```

## Run the container

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Push to Docker Hub

```bash
docker login
docker tag todoapp:1.0.0 justoleja9/todoapp:1.0.0
docker push justoleja9/todoapp:1.0.0
```

## Access the application

Open your browser and go to:

- http://localhost:8080/
- API: http://localhost:8080/api/
