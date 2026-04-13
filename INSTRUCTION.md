# Todo App Docker Instructions

## Docker Hub Repository

https://hub.docker.com/r/dimonalek/todoapp

## Build the image

From the project root (`devops_todolist`):

```powershell
docker build -t dimonalek/todoapp:1.0.0 .
```

## Tag and push image to Docker Hub

1. Log in to Docker Hub:

```powershell
docker login
```

2. Push the image:

```powershell
docker push dimonalek/todoapp:1.0.0
```

## Run the container

```powershell
docker run --rm -p 8080:8080 dimonalek/todoapp:1.0.0
```

If you want to run your local image (without pull), use:

```powershell
docker run --rm -p 8080:8080 todoapp
```

## Access in browser

After the container starts, open:

http://localhost:8080/

API endpoint:

http://localhost:8080/api/

## Note on database migrations

The `Dockerfile` runs `python manage.py migrate` during the image build stage using the bundled SQLite database. If you switch to a remote database (e.g., PostgreSQL), the build-time migration will fail because the database is not reachable at build time. In that case, remove the `RUN python manage.py migrate` line from the `Dockerfile` and run migrations at container startup instead — for example by overriding the container command:

```powershell
docker run --rm -p 8080:8080 dimonalek/todoapp:1.0.0 sh -c "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"
```
