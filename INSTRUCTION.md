## Link to Docker Hub repository

https://hub.docker.com/repository/docker/vadk1m/todoapp/general

## How to build and run the app

To build the image, run the following command:

```bash
docker build -t todoapp:1.0.0 .
```

To run the built image, execute the following command:

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

Alternatively, pull the image from the Docker Hub repository and run the container:

```bash
docker pull vadk1m/todoapp:1.0.0
docker run -p 8080:8080 vadk1m/todoapp:1.0.0
```

## How to access the app

- http://localhost:8080/ - landing page
- http://localhost:8080/api/ - API page
