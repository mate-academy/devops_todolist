# ToDo App Docker Instructions
"Open http//:localhost:8080 in your browser"
## Docker Hub
Link to image: https://hub.docker.com/repository/docker/dianahorban/todoapp/general
## Build and Run
```bash
# Build image
docker build -t todoapp .
# Run container
docker run -d -p 8080:8080 todoapp
