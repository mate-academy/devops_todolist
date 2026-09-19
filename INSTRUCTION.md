<!-- Link to Docker Hub repository with an app image. -->
https://hub.docker.com/repository/docker/milokc/todoapp
docker pull milokc/todoapp:1.0.0

<!-- Instructions for building and running the container. -->
To build container:
docker build . -t todoapp:1.0.0
To run container:
docker run -p 8080:8080 todoapp:1.0.0

To run container pulled from repo:
docker run -p 8080:8080 milokc/todoapp:1.0.0

<!-- Instructions on how to access the app via a web browser. -->
To access app use link below:
http://localhost:8080/
