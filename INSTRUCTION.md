# ToDo App Docker Instructions
## Docker Hub
Link to image: https://hub.docker.com/repository/docker/dianahorban/todoapp/general
## Build and Run
```bash
# Build image
docker build -t todoapp .
# Run container
docker run -d -p 8080:8080 todoapp
