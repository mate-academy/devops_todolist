# Docker instructions

## Docker Hub image

- Repository: `docker.io/nazarkulyk6/todoapp`
- Link: `https://hub.docker.com/r/nazarkulyk6/todoapp`
- Tag: `1.0.0`

## Build

From the project root:

```bash
docker build --build-arg PYTHON_VERSION=3.12-slim -t todoapp .
```

## Run

```bash
docker run --rm -p 8080:8080 todoapp
```

## Open in browser

Open `http://localhost:8080/`.

API is available at `http://localhost:8080/api/`.

## Tag and push to Docker Hub

```bash
docker tag todoapp nazarkulyk6/todoapp:1.0.0
docker push nazarkulyk6/todoapp:1.0.0
```

