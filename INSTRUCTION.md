#Dockerhub
repository https://hub.docker.com/repository/docker/deadmarvald/todoapp/


#Build container
docker build -t todoapp:1.0.0 .


#Run container
docker run -d -p 8080:8080 todoapp:1.0.0


#Access application
http://localhost:8080

