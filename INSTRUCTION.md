## Docker Hub Repository
Link to image:  
https://hub.docker.com/repository/docker/aisengrim/todoapp/general


## How to build image

```bash
docker build -t todoapp:1.0.0 .
```


## How to run the container

Run container from Docker Hub image:

```bash
docker run -d -p 8080:8080 --name todoapp aisengrim/todoapp:1.0.0
```

Run container from local image:

```bash
ocker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
```


## How to see that container is running

```bash
docker ps
```
or

```bash
docker ps -a
```


## Access app in your browser

Open your browser and go to:

```
http://localhost:8080
```


## How to stop container

```bash
docker stop todoapp
```


## How to remove container

```bash
docker rm todoapp
```


## How to remove image

```bash
docker rmi todoapp:1.0.0
```


## FAQ

- The application runs on **port 8080**
- Ensure port **8080** is free before running the container
