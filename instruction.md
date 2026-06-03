# TodoApp

## Docker Hub
https://hub.docker.com/r/igorrrrrrrrr/todoapp

---

## Build image

```bash
docker build -f Dockerfile -t todoapp .
```

## Run container

```bash
docker run -d -p 8080:8080 --name todoapp igorrrrrrrrr/todoapp:1.0.0
```

## Or pull from Docker Hub and run

```bash
docker pull igorrrrrrrrr/todoapp:1.0.0
docker run -d -p 8080:8080 --name todoapp igorrrrrrrrr/todoapp:1.0.0
```

---

## Access the application

Open browser and go to: