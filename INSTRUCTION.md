### Docker hub repository with todoapp: [link](https://hub.docker.com/repository/docker/timnord1993/todoapp/general)

### To build and run the container use the following commands:
docker build -t todoapp:1.0.0 ./ \
docker run -p 8080:8080 todoapp:1.0.0

### To access the application via browser:
http://localhost:8080