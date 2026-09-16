# Django Todo List — Docker Instructions

## Docker Hub

[Docker Hub Repository](https://hub.docker.com/r/sangooooo/todoapp)

## Instructions for building and running the container

### 1. Build Docker image

    docker build -t django-todolist .

### 2. Run the container

    docker run -p 8080:8080 django-todolist

## Access the application

http://localhost:8080/todolist/1/

