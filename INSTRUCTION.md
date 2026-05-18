Image repository link:
https://hub.docker.com/repository/docker/difuz1x/todoapp/general

to run the app:
docker pull difuz1x/todoapp:1.0.0

and then 

docker run -d -p 8080:8080 --name todoapp difuz1x/todoapp:1.0.0

after application succesfully started

go to browser with URL:
http://localhost:8080