# How to run the app

## 1. Install Docker

Download and install Docker for your OS: https://docs.docker.com/get-docker/

## 2. Build the image

```
docker build -t todoapp:1.0.0 .
```

## 3. Run the container

```
docker run -d -p 8080:8080 666phx/todoapp:1.0.0
```

## 4. Open in browser

Go to: http://localhost:8080

---

Docker Hub image: https://hub.docker.com/repository/docker/666phx/todoapp/general
