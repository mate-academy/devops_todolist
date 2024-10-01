# Django ToDo list

This Django-based ToDo List web application offers essential features commonly found in modern web apps, including user authentication (accounts/login), a RESTful API, and an interactive user interface.

![ToDo logo](https://i.ibb.co/YDdCcZR/2.png)

## Setup

1. Link to Docker image
```
https://hub.docker.com/r/dastex/todo-app
```
2. Pull the Docker Image
```
docker pull dastex/todo-app
```

3. Build the Docker Image
```
docker build -t dastex/todo-app:1.0.0 .
```

4. Run container with application
```
docker run -p 8080:8080 dastex/todo-app:1.0.0
```

5. Open application in browser
```
http://127.0.0.1:8080/
```