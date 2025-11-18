## Run container with docker

This is instruction of how you can run the container locally


Firstly, you need to build a image using this command
```
docker build -t tongobash/todoapp:1.0.0 .

```

Then you need to run this image 

```
docker run -d --name todoapp-container -p 8080:8080 tongobash/todoapp:1.0.0

```

Then you can visit the http://localhost:8080 to check the website
Link where you can download this image [Docker Hub Repository](https://hub.docker.com/repository/docker/tongobash/todoapp/)