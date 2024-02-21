For using amazing todo application please follow instruction below

To download docker image from [repository](https://hub.docker.com/repository/docker/rozdorozhnii/todoapp/) and run it on you local machine use current command
```
docker run -d -p 8080:8080 rozdorozhnii/todoapp:1.0.0
```
Now you can enjoy fantastic todo application on http://0.0.0.0:8080/

Or

1. Build new image by executing
```
docker build -t todoapp:1.0.0 .
```
2. Run container in your local machine
```
docker run -d -p 8080:8080 todoapp:1.0.0
```
3. You can enjoy fantastic todo application on http://0.0.0.0:8080/