# Instructions for Running the ToDo Application Container

Docker Hub Image: https://hub.docker.com/r/slradbez/todoapp/tags

The image is available at: docker pull slradbez/todoapp:1.0.0

# Steps to Run the Container

## 1. Load image
```bash
docker pull slradbez/todoapp:1.0.0
```

## 2. Run image
```bash
docker run -p 8080:8080 todoapp:1.0.0
```
Accessing the Application via Browser

Once the container is running successfully, the application will be available at:

http://localhost:8080
