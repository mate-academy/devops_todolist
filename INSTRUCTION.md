# Docker documentation
Docker Hub repository: https://hub.docker.com/repository/docker/dmytrohlazyrin/todoapp/general

## Build the image
```shell
docker build -t todoapp:1.0.0 .
```

## Run the container
```shell
docker run -d -p 8080:8080 --name todolistapp todoapp:1.0.0
```

## Accessing the application via a browser
```text
http://localhost:8080/
```

## Push the image to the Docker Hub

```bash
docker tag todoapp:1.0.0 dmytrohlazyrin/todoapp:1.0.0
docker push dmytrohlazyrin/todoapp:1.0.0
```
