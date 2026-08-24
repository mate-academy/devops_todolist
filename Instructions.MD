Docker Hub repository
You can acces the image by the link:
https://hub.docker.com/repository/docker/nicotqq/todoapp/
or 
docker pull nicotqq/todoapp:1.0.0

Clone repository:
git@github.com:Nicotqq/devops_todolist.git

Build the image:
docker build -t todoapp .

Run the container mapping the port 8080
docker run -p 8080:8080
or on the background
docker run -d -p 8080:8080

You can acces the aplication by:
http://localhost:8080/ 
and
http://localhost:8080/api/