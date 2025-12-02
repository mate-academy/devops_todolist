# INSTRUCTION.md

## Docker Hub Image

The Docker image for this app is available at:

[https://hub.docker.com/repository/docker/dmn1024/todoapp/tags?page=1&name=1.0.0](https://hub.docker.com/repository/docker/dmn1024/todoapp/tags?page=1&name=1.0.0)

## Build the Docker Image

```
docker build -t dmn1024/todoapp:1.0.0 .
```

## Push the Image to Docker Hub

```
docker login
# Enter your Docker Hub credentials

docker push dmn1024/todoapp:1.0.0
```

## Run the Container

```
docker run -d -p 8080:8080 --name todoapp dmn1024/todoapp:1.0.0
```

## Access the Application

Open your browser and go to:

[http://localhost:8080](http://localhost:8080)

## Notes
- The app will be available on port 8080.
- Make sure port 8080 is not blocked by your firewall.
- If you need to stop the container:
  ```
  docker stop todoapp
  docker rm todoapp
  ```
