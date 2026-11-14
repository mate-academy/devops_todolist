## Docker Hub
Repository: https://hub.docker.com/r/storozhuk21/todoapp
docker pull storozhuk21/todoapp:1.0.0

## build image command
docker build -t todoapp:1.0.0 .


## run image command
docker run -p 8080:8080 todoapp:1.0.0


## if success you can check it by link
http://localhost:8080/