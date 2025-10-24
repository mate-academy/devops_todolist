link to docker hub:
https://hub.docker.com/repository/docker/nizartem/todoapp/tags
To build image command:
docker build --build-arg PYTHON_VERSION=3.8 -t todoapp:1.0.0 .
To run image command:
docker run -p 8080:8080 todoapp:1.0.0
To tag image before push:
docker tag todoapp:1.0.0 nizartem/todoapp:1.0.0
To push image to Docker.hub:
docker login
docker push nizartem/todoapp:1.0.0
URL for acces in browser:
http://localhost:8080
Command to run from dockerhub:
docker run -p 8080:8080 nizartem/todoapp:1.0.0
How to pull from docker hub:
docker pull nizartem/todoapp:1.0.0