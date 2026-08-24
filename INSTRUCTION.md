# How to run Todo App

## Docker Hub

https://hub.docker.com/repository/docker/daniilshpak/todoapp/general

## 1. Build Image

docker build -t daniilshpak/todoapp:1.0.0 .

## 2. Pull Image from Docker Hub


docker pull daniilshpak/todoapp:1.0.0

## 3. Run Container

docker run -d -p 8080:8080 daniilshpak/todoapp:1.0.0

## 4. Open Application

localhost:8080

