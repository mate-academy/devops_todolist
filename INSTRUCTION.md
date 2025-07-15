# Django ToDo App Docker Instructions

## Docker Hub Repository
**Image Location:** https://hub.docker.com/repository/docker/vasyl568/todoapp/general

## Building the Container

```bash
docker build -t todoapp:1.0.0 .
```

## Running the Container

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Accessing the Application

Once the container is running, open your web browser and navigate to:
- **Application URL:** http://localhost:8080
- **API Endpoint:** http://localhost:8080/api/
