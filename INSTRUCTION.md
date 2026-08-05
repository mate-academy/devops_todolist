# Django ToDo Docker Instructions

## Docker Hub image

Docker Hub repository:

https://hub.docker.com/r/boz1k/todoapp


## Build image

Build Docker image:

```bash
docker build -t todoapp:1.0.0 .
```

## Run container

Start container:

```bash
docker run -d \
--name todoapp \
-p 8080:8080 \
todoapp:1.0.0
```

## Accessing the application

Open your browser and visit:

http://localhost:8080

The Django ToDo application will be available at this address.


## Stop container

To stop the running container:

```bash
docker stop todoapp
```

## Remove container

To remove the container:

```bash
docker rm todoapp
```