# Django ToDo App - Docker Instructions

## Docker Hub Repository

**Image Repository:** [nbkm29/todoapp:1.0.0](https://hub.docker.com/repository/docker/nbkm29/todoapp/general)

## Building the Docker Image

### 1. Clone the repository

```bash
git clone <repository-url>
cd devops_todolist
```

### 2. Build the Docker image

```bash
docker build -t todoapp:1.0.0 .
```

## Running the Container

```bash
docker run -d -p 8080:8080 --name todoapp-container todoapp:1.0.0
```

After starting the container, open your web browser and navigate to:

- **Main application:** [http://localhost:8080/](http://localhost:8080/)
- **API endpoint:** [http://localhost:8080/api/](http://localhost:8080/api/)
