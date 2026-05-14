Link to Docker Hub repo: https://hub.docker.com/repository/docker/boda4ek888/todoapp/general
Instructions for building and running the container:
1. docker build -t todoapp:1.0.0 .
2. docker run -d -p 8080:8080 todoapp:1.0.0
3. Access the application via a browser at http://localhost:8080/