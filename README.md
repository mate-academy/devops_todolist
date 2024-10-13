# Docker Image for ToDo app

You can discover latest versions on [Docker Hub](https://hub.docker.com/repository/docker/maxschmide/todoapp/general)


## Get Started

Install container

```
docker run --name your_name -d -p 8080:8080 maxschmide/todoapp
```

Now you can browse the [API](http://localhost:8000/api/) or start on the [landing page](http://localhost:8000/).

## Build container

1. Fork repository

2. For build container run:

```
docker build -t todoapp:<your_tag> .
```
