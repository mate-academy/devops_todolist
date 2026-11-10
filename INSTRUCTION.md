# Docker Hub

https://hub.docker.com/r/agarnaga/todoapp

# Build the image

```bash
docker build -t todoapp .
```

# Run the container

Run the locally built image:

```bash
docker run --rm -p 8080:8080 todoapp
```

Or run the image from Docker Hub:

```bash
docker pull agarnaga/todoapp:1.0.0
docker run --rm -p 8080:8080 agarnaga/todoapp:1.0.0
```

# Open in browser

http://localhost:8080
