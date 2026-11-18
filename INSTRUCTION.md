# TodoApp Docker Instructions

## Docker Hub Repository

Image: [nazarroshchuk/todoapp:1.0.0](https://hub.docker.com/r/nazarroshchuk/todoapp)

## Build the Image

```bash
docker build -t todoapp:1.0.0 .
```

## Tag and Push to Docker Hub

```bash
docker tag todoapp:1.0.0 nazarroshchuk/todoapp:1.0.0
docker push nazarroshchuk/todoapp:1.0.0
```

## Run the Container

```bash
docker run -d -p 8080:8080 nazarroshchuk/todoapp:1.0.0
```

Or pull directly from Docker Hub and run:

```bash
docker pull nazarroshchuk/todoapp:1.0.0
docker run -d -p 8080:8080 nazarroshchuk/todoapp:1.0.0
```

## Access the Application

Open your browser and navigate to:

- Landing page: http://localhost:8080
- API: http://localhost:8080/api/
