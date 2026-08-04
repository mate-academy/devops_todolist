# Todo App

## Docker Hub

https://hub.docker.com/r/myusername/todoapp

---

## Build image

```bash
docker build -t todoapp .
```

---

## Run container

```bash
docker run -p 8080:8080 todoapp
```

---

## Open application

Open in browser:

http://localhost:8080

---

## Pull image from Docker Hub

```bash
docker pull myusername/todoapp:1.0.0
```

Run:

```bash
docker run -p 8080:8080 myusername/todoapp:1.0.0
```