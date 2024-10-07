# Django ToDo list

This is a todo list web application with basic features of most web apps, i.e., accounts/login, API, and interactive UI. To do this task, you will need:

1. Pul the Docker image
   https://hub.docker.com/r/ivanbilobrov/todo-app - link to the docker image

```
docker pull ivanbilobrov/todo-app:1.0.0
```

2. Build the Docker Image

```
docker build -t ivanbilobrov/todo-app:1.0.0 .
```

3. Run Docker Container

```
docker run -p 8080:8080 ivanbilobrov/todo-app:1.0.0
```

4. Open application

Follow link http://127.0.0.1:8080/
