

# ToDo App Docker Image
## Docker Hub
https://hub.docker.com/repository/docker/margarita8454/todoapp/general
## Запуск

docker pull margarita8454/todoapp:1.0.0
docker run -d -p 8080:8080 margarita8454/todoapp:1.0.0
docker build -t todoapp:1.0.0 .

 ## How to access the app in the browser  => http://localhost:8080/