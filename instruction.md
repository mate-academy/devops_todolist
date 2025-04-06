# Instructions for Running TodoApp from Docker Hub

https://hub.docker.com/repository/docker/savik1992/todoapp/general this is dockerhub link.

To run the **TodoApp** container from Docker Hub locally on your PC, follow these steps:

1. First, pull the Docker image from Docker Hub:
```
docker pull savik1992/todoapp:1.0.0
```

2. Then, run the container using the following command:
```
docker run -d -p 8080:8080 --name todoapp savik1992/todoapp:1.0.0
```

3. After that, you can access the TodoApp application through your web browser at the following address:
```
http://localhost:8080
```