Link for image on DockerHub: https://hub.docker.com/repository/docker/sserkov84/todoapp/general
To launch container properly, use next commands:

1.
```
docker pull sserkov84/todoapp:1.0.0
```
2.
```
docker build . -t todoapp:1.0.0
```
3.
```
docker run --name todoapp -p 8080:8080 todoapp:1.0.0
```

You can use running app in browser (default is http://localhost:8000):
