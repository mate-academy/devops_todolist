Docker Hub repository: https://hub.docker.com/repository/docker/vitaliiog/todoapp/general

Instructions for building and running the container:
docker build todoapp:1.0.0 
docker run -p 8080:8080 todoapp:1.0.0

Istructions on accessing the application via a browser:
After executing the command "docker run -p 8080:8080 todoapp:1.0.0" the application will be available on localhost:8080