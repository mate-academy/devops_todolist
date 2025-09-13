# ToDo List Django App - Docker Instructions

This document contains instructions for building, running, and accessing the ToDo List Django application using Docker.

## Docker Image

The Docker image for this application is hosted on Docker Hub:
[https://hub.docker.com/repository/docker/kenu21/todoapp/general](https://hub.docker.com/repository/docker/kenu21/todoapp/general)

Image name and tag:

```
kenu21/todoapp:1.0.0
```

---

## Repository Layout

The project expects the following top-level directories in the repository:

- manage.py
- requirements.txt
- api/
- accounts/
- lists/
- todolist/

Make sure all of these exist before building the Docker image.

---

## Building the Docker Image

If you want to build the image locally, run the following commands from the project root:

```bash
# Build the Docker image
docker build --build-arg PYTHON_VERSION=3.13 -t todoapp:1.0.0 .
```

Here `PYTHON_VERSION` can be changed to your preferred Python version supported by Django 4 (3.8+).

---

# Build the Docker image locally
docker build --build-arg PYTHON_VERSION=3.13 -t todoapp:1.0.0 .

---

# Tag the image for Docker Hub
docker tag todoapp:1.0.0 kenu21/todoapp:1.0.0

---

# Push the image to Docker Hub
docker push kenu21/todoapp:1.0.0

---

## Running the Container

To start the Django app inside a Docker container, run:

```bash
docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
```

* `-p 8080:8080` maps the container port `8080` to your local machine port `8080`.
* `-d` runs the container in detached mode.

Note: Database migrations are executed during the image build stage, not at container startup. 
This means the database schema is already prepared when the container runs.

---

## Accessing the Application

Once the container is running, open your browser and navigate to:

```
http://localhost:8080
```

You should see the landing page of the ToDo List application.

---

## Notes

* The environment variable `PYTHONUNBUFFERED=1` is set to ensure logs are printed directly to stdout/stderr.
* The Django server runs on `0.0.0.0:8080` inside the container to allow external access.
* The `RUN python manage.py migrate` command is executed during the image build. 
  - If your project uses **SQLite**, the database file will be created in `/app/db`. Make sure this path is writable and persistent (a volume is declared at `/app/db`).
  - If your project uses an **external database** (e.g., Postgres), ensure that the database is accessible at build time; otherwise, migrations may fail. In such cases, consider running migrations at container start.
