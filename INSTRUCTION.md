# Django ToDo List — Docker

Docker Hub: https://hub.docker.com/repository/docker/voleger/todoapp

## Build & Run

### Using Docker directly

```bash
# Build the image
docker build -t todoapp:1.0.0 --load .

# Push to Docker Hub
docker tag todoapp:1.0.0 voleger/todoapp:1.0.0
docker push voleger/todoapp:1.0.0

# Run the container
docker run -p 8080:8080 --name todoapp todoapp:1.0.0
```

### Using Docker Compose

```bash
# Build and start
docker compose up --build

# Run in detached mode
docker compose up -d

# Stop
docker compose down
```

## Access the Application

Open your browser and go to:

- **Application:** http://localhost:8080
- **API:** http://localhost:8080/api/
