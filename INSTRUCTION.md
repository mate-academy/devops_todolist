## How to run Docker Container
Build your Docker Image

```
docker build -t todoapp:1.0.0 .
```

Run your Image:

```
docker run -p 8080:8080 --name todolist todoapp:1.0.0
```

Copy link and paste to your browser:

```
http://0.0.0.0:8080
```
My docker reposetory:

```
https://hub.docker.com/repository/docker/apihunter/todoapp/general
```