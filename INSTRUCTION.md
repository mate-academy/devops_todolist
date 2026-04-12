# Todo App Docker Instructions

## Docker Hub Repository

Replace `<your-dockerhub-username>` with your Docker Hub username:

https://hub.docker.com/r/<your-dockerhub-username>/todoapp

## Build the image

From the project root (`devops_todolist`):

```powershell
docker build -f DockerFile -t todoapp .
```

## Tag and push image to Docker Hub

1. Log in to Docker Hub:

```powershell
docker login
```

2. Tag the image with the required version:

```powershell
docker tag todoapp <your-dockerhub-username>/todoapp:1.0.0
```

3. Push the image:

```powershell
docker push <your-dockerhub-username>/todoapp:1.0.0
```

## Run the container

```powershell
docker run --rm -p 8080:8080 <your-dockerhub-username>/todoapp:1.0.0
```

If you want to run your local image (without pull), use:

```powershell
docker run --rm -p 8080:8080 todoapp
```

## Access in browser

After the container starts, open:

http://localhost:8080/

API endpoint:

http://localhost:8080/api/
