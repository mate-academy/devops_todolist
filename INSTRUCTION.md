# INSTRUCTIONS

- Link: [Personal Docker Hub Repository](https://hub.docker.com/r/tetianamohorian/todoapp)


## Steps

### Build the Docker image

```
docker build -f Dockerfile . -t todoapp:1.0.0
```

### Run the container

```
docker run -p 8080:8080 todoapp:1.0.0
```

### Access the application

Open the app in your browser at:


[http://localhost:8080](http://localhost:8080)


Also, you can browse API:


[http://localhost:8080/api/](http://localhost:8080/api/)

