# TodoApp — Docker Instructions

## Docker Hub Repository

The application image is available at:

```
https://hub.docker.com/repository/docker/nichelangeloo/todoapp/general
```

---

## Dockerfile Overview

The `Dockerfile` uses a **two-stage build**:

- **Build stage** — installs Python dependencies into an isolated layer.
- **Run stage** — copies only the installed packages and application code into a clean final image, keeping the image small.

Key configuration:

- `ARG PYTHON_VERSION` — parameterises the Python base image version (e.g. `3.14-slim`).
- `ENV PYTHONUNBUFFERED=1` — logs are written directly to stdout/stderr without buffering.
- Database migrations are applied at build time via a `RUN python manage.py migrate` instruction.
- The server is started with `python manage.py runserver 0.0.0.0:8080` so it is reachable from outside the container.

---

## Building the Image Locally

```bash
# Build with the default Python version
docker build -t todoapp:1.0.0 .

# Or override the Python version explicitly
docker build --build-arg PYTHON_VERSION=3.11-slim -t todoapp:1.0.0 .

# Tag the image for Docker Hub
docker tag todoapp:1.0.0 <username>/todoapp:1.0.0

# Push the image to Docker Hub
docker push <username>/todoapp:1.0.0
```

---

## Running the Container

```bash
docker run -d \
  --name todoapp \
  -p 8080:8080 \
  todoapp:1.0.0
```

| Flag             | Purpose                                       |
| ---------------- | --------------------------------------------- |
| `-d`             | Run in detached (background) mode             |
| `--name todoapp` | Assign a human-readable name to the container |
| `-p 8080:8080`   | Map host port 8080 to the container port 8080 |

---

## Accessing the Application

Once the container is running, open your browser and navigate to:

```
http://localhost:8080
```

To verify the container is up:

```bash
docker ps
docker logs todoapp
```

---

## Stopping and Removing the Container

```bash
docker stop todoapp
docker rm todoapp
```
