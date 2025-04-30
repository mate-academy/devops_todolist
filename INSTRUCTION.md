# ToDo app Docker instructions

## Docker Hub Link

Image: https://hub.docker.com/repository/docker/lambdda/todoapp/general

## How to build

```bash
docker build -t todoapp:1.0.0 .
```

You can customize the Python version during build:

```bash
docker build --build-arg PYTHON_VERSION=3.11 -t todoapp:1.0.0 .
```

## How to Run the App

```bash
docker run -d -p 8080:8080 todoapp:1.0.0
```

## How to access the app

Once running, open your browser and go to:
http://localhost:8080