## Docker Hub
docker pull storozhuk21/todoapp:tagname


## build image command
docker build -t todoapp:1.0.0 .


## run image command
docker run -p 8080:8080 todoapp:1.0.0


## if success you can check it by link
http://localhost:8080/