# ToDo App — Docker Instructions

## Docker Hub repository

The image is published at:

https://hub.docker.com/r/netlyuk/todoapp

Pull it directly with:

```
docker pull netlyuk/todoapp:1.0.0
```

## Build the image locally

From the repository root (where the `Dockerfile` is located):

```
docker build -t todoapp:1.0.0 .
```

Optionally, override the Python base image version at build time:

```
docker build --build-arg PYTHON_VERSION=3.11-slim -t todoapp:1.0.0 .
```

## Run the container

```
docker run -d --name todoapp -p 8080:8080 todoapp:1.0.0
```

Or, using the image pulled from Docker Hub:

```
docker run -d --name todoapp -p 8080:8080 netlyuk/todoapp:1.0.0
```

Database migrations are already applied during the image build, so the app is ready to use as soon as the container starts.

## Access the application

Open your browser and go to:

- Landing page: http://localhost:8080/
- API: http://localhost:8080/api/

## Stop and remove the container

```
docker stop todoapp
docker rm todoapp
```
