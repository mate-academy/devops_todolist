## Link to Docker Hub repository:
[Docker Hub - todoapp](https://hub.docker.com/r/olhaho/todoapp/tags)

## Build container:
```
docker build --build-arg PYTHON_VERSION=3.9 -t todoapp:1.0.0 . 
```

## Run container:
```
docker run -d -p 8080:8080 --name todoapp-container todoapp:1.0.0
```

##  Check locally
http://localhost:8080
