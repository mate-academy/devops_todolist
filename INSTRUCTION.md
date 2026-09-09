# Docker instructions

Docker Hub image tags: [aleksmajlo/todoapp](https://hub.docker.com/r/aleksmajlo/todoapp/tags)

## Build the image

Run the following command from the project root (the directory containing the
`Dockerfile`):

```bash
docker build --build-arg PYTHON_VERSION=3.8 -t todoapp .
```

## Run the container

Map port `8080` inside the container to port `8000` on your computer:

```bash
docker run --name todoapp-container -d -p 8000:8080 todoapp
```

Check that the container is running and view its logs:

```bash
docker ps
docker logs todoapp-container
```

Open the application in a browser:

- Web interface: <http://localhost:8000/>
- API: <http://localhost:8000/api/>

Use `localhost` in the browser. The address `0.0.0.0:8080` is used only by the
Django server inside the container.

## Stop and remove the container

```bash
docker stop todoapp-container
docker rm todoapp-container
```

## Tag and push version 1.0.0 to Docker Hub

Log in, add the required tag, and push the image:

```bash
docker login
docker tag todoapp aleksmajlo/todoapp:1.0.0
docker push aleksmajlo/todoapp:1.0.0
```

The published image can then be downloaded and run with:

```bash
docker pull aleksmajlo/todoapp:1.0.0
docker run --name todoapp-container -d -p 8000:8080 aleksmajlo/todoapp:1.0.0
```
