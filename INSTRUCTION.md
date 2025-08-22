# Build & Run Instructions

```
# Build the image locally
docker build -t todoapp:1.0.0 --build-arg PYTHON_VERSION=3.8 .
```


# Tag and push to Docker Hub
```
docker tag todoapp:1.0.0 gosyav/todoapp:1.0.0
docker push gosyav/todoapp:1.0.0
```

# Run the container (local build)
```
docker run --name todoapp -d -p 8080:8080 todoapp:1.0.0
```

# Or run the container (from Docker Hub)
```
docker run --name todoapp -d -p 8080:8080 gosyav/todoapp:1.0.0
```
