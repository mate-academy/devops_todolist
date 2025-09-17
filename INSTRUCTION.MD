Link to my personal Docker Hub:
https://hub.docker.com/repositories/antonborovyk2001

App image link:
https://hub.docker.com/repository/docker/antonborovyk2001/todoapp/tags

Command for building an image:
docker build -t antonborovyk2001/todoapp:1.0.0 .

Pushing image to docker_hub
docker push antonborovyk2001/todoapp:1.0.0

Command to start a container:
docker run -p 8080:8080 antonborovyk2001/todoapp:1.0.0

Browser access link:
http://localhost:8080/

