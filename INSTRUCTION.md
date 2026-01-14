# TodoApp — Docker Instructions

## Docker Hub repository

Docker image is available at:

https://hub.docker.com/r/krizanivskak/todoapp

Image tag:
krizanivskak/todoapp:1.0.0

---

## Requirements

- Docker installed
- Docker daemon running

---

## Build the image locally

From the project root directory:

```bash
docker build -t todoapp:1.0.0 .
```

Check:
```bash
docker images
``` 
---
## Run the container locally
```bash
docker run --name todoapp -p 8080:8080 todoapp:1.0.0
```

To run in background:
```bash
docker run -d --name todoapp -p 8080:8080 todoapp:1.0.0
```

Stop and remove:
```bash
docker stop todoapp
docker rm todoapp
```

## Run using Docker Hub image
Pull image:
```bash
docker pull krizanivskak/todoapp:1.0.0
```

Run:
```bash
docker run --name todoapp -p 8080:8080 krizanivskak/todoapp:1.0.0
```
---
## Access application in browser
Open:
http://localhost:8080