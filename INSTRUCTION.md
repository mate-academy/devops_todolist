# How to run the app

## 1. Install Docker

Download and install Docker for your OS: https://docs.docker.com/get-docker/

## 2. Build the image

```
docker build -t todoapp:1.0.0 .
```

## 3. Tag and push to Docker Hub

```
docker tag todoapp:1.0.0 666phx/todoapp:1.0.0
docker push 666phx/todoapp:1.0.0
```

## 4. Run the container

```
docker run -d -p 8080:8080 666phx/todoapp:1.0.0
```

## 5. Open in browser

Go to: http://localhost:8080

---

Docker Hub image: https://hub.docker.com/r/666phx/todoapp/tags
