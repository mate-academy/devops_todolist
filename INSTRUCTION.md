Application todoapp is located in
https://hub.docker.com/repository/docker/foxytail8/todoapp

For build container run command
docker build -t todoapp:1.0.0 .

You need download container and run with command
docker run -p 8080:8080 todoapp:1.0.0

Then you open in browser page http://localhost:8080 or http://localhost:8080/api/
