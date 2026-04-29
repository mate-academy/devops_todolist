Link to Docker repo: https://hub.docker.com/repository/docker/alyonatym/todoapp/general

instructions for building and running:
docker tag todoapp:1.0.0 alyonatym/todoapp:1.0.0
docker push alyonatym/todoapp:1.0.0
docker build -t todoapp:1.0.0 .
docker run -p 8080:8080 todoapp

instructions on accessing the application via a browser:
go to http://localhost:8080 