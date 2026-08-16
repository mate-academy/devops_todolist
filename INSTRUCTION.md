# Docker Instructions

Docker Hub repository: https://hub.docker.com/r/bodya4243/todoapp

## Build the Image

Run the build from the project root:

```bash
docker build -t todoapp:1.0.0 .
```

To build with a specific Python base image version:

```bash
docker build --build-arg PYTHON_VERSION=3.11-slim -t todoapp:1.0.0 .
```

## Run the Container

Start the application container and publish Django on port 8080:

```bash
docker run --name todoapp -p 8080:8080 todoapp:1.0.0
```

If the container name is already in use, remove the old container first:

```bash
docker rm -f todoapp
docker run --name todoapp -p 8080:8080 todoapp:1.0.0
```

## Pull and Run from Docker Hub

Pull the published image:

```bash
docker pull bodya4243/todoapp:1.0.0
```

Run the published image:

```bash
docker run --name todoapp -p 8080:8080 bodya4243/todoapp:1.0.0
```

## Access the Application

Open the application in a browser:

```text
http://localhost:8080/
```

The API is available at:

```text
http://localhost:8080/api/
```
