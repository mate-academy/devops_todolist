Docker Hub Link: https://hub.docker.com/r/lateexairu/todoapp/tags

## Build and run

Build image from the project folder:

```bash
docker build -t todoapp:1.0.0 .
```

Run local image:

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

Open http://localhost:8080 in your browser.
