## Link to DockerHub repository

https://hub.docker.com/repository/docker/stasblashchuk97/todoapp/general

## How to build and run the container

1. Build the container by executing following command
```
 docker build -t todo:1.0 .
 ```

2. Run the container by executing following command
```
 docker run -p 8080:8080 todo:1.0
 ```

## How to access the application via browser

Open browser and proceed by following url http://0.0.0.0:8080/