# ToDo App Docker Instructions

## Docker Hub
🔗 Image: [todoapp](https://hub.docker.com/repository/docker/stacyvariuchuk/todoapp/general)

Image name: `todoapp:1.0.0`

---

## Build the image

Make sure you have Python 3.8+ locally if testing, or just:

```bash
docker build -t todoapp:1.0.0 --build-arg PYTHON_VERSION=3.8 .
```

## Run the container

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Open in browser

Once the container is running, go to:

http://localhost:8080

You should see the Django-powered ToDo app landing page or API root.
