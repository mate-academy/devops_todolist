## Docker Hub
**Image:** https://hub.docker.com/repository/docker/nyxx00/todoapp/general

## Build
```bash
docker build -t todoapp:1.0.0 .
```

## Run
```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Access the application
- **App URL:** http://localhost:8080
- **API endpoint:** http://localhost:8080/api/