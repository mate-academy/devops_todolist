# Django ToDo list

This is a todo list web application with basic features of most web apps, i.e., accounts/login, API, and interactive UI.

## Link to personal Docker Hub repository

[sovietencounter/todoapp](https://hub.docker.com/r/sovietencounter/todoapp)

## Run app in container

1. Build docker image
docker build . -t todoapp:1.0.0
2. Run docker container
docker run --name web-server -p 8080:8080 todoapp:1.0.0
3. Access app in browser http://localhost:8080
