https://hub.docker.com/repository/docker/skermas48/todoapp/general
docker build . -t todoapp:1.0.0
docker run -p 8080:8080 todoapp:1.0.0
http://localhost:8080/
http://localhost:8080/api/