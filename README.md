Link for image on DockerHub: https://hub.docker.com/repository/docker/zabftft/todoapp/general
To launch container properly, use next commands:

```
docker pull zabftft/todoapp:1.0.0
docker build . -t todoapp:1.0.0
docker run --name todoapp -p 8080:8080 todoapp:1.0.0
```

To access app via browser, type 'http://localhost:8080' in address bar.
