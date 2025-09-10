# Build & Run Instructions

```
# Build the image locally
docker build -t todoapp:1.0.0 --build-arg PYTHON_VERSION=3.10 .
```

# Tag and push to Docker Hub

```
docker tag todoapp:1.0.0 lilarin/todoapp:1.0.0
docker push lilarin/todoapp:1.0.0
```

# Run the container

```
docker run --name todoapp -d -p 8080:8080 todoapp:1.0.0
```

# Or run the container (from Docker Hub)

```
docker run --name todoapp -d -p 8080:8080 lilarin/todoapp:1.0.0
```