# Django ToDo List — Docker Instructions

## Description

Django ToDo List is a web application that provides task management functionality, user authentication, and a REST API.

The application runs inside a Docker container using Python 3.11 and Django 4.1.10.

## Docker Hub Repository

The Docker image is available on Docker Hub:

https://hub.docker.com/r/romanartem/todoapp

Image: `romanartem/todoapp:1.0.0`

## Requirements

Before running the application, install:

- Docker Desktop
- Git

Make sure Docker Desktop is running.

## 1. Clone the Repository

```bash
git clone https://github.com/KoLpI76/devops_todolist.git
cd devops_todolist
```

## 2. Build the Docker Image

Build the image using the Dockerfile:

```bash
docker build -t todoapp .
```

The Dockerfile uses a multi-stage build:

- Build stage: installs Python dependencies.
- Run stage: copies dependencies and application files, executes database migrations, and configures the Django server.

## 3. Run the Docker Container

Start the application in detached mode:

```bash
docker run -d -p 8080:8080 --name todo-container todoapp
```

## 4. Check Container Status

Verify that the container is running:

```bash
docker ps
```

Check the application logs:

```bash
docker logs todo-container
```

## 5. Access the Application

Open your web browser and navigate to:

http://localhost:8080/

The Django ToDo List application should be available.

REST API:

http://localhost:8080/api/

## 6. Pull the Image from Docker Hub

Alternatively, download the published image:

```bash
docker pull romanartem/todoapp:1.0.0
```

Run the downloaded image:

```bash
docker run -d -p 8080:8080 --name todo-container romanartem/todoapp:1.0.0
```

Note: If a container named `todo-container` already exists, stop and remove it before running another container with the same name.

## 7. Stop the Container

```bash
docker stop todo-container
```

## 8. Remove the Container

```bash
docker rm todo-container
```

## 9. Restart the Container

To restart an existing stopped container:

```bash
docker start todo-container
```

## 10. Database Migrations

Database migrations are executed during the Docker image build using:

```dockerfile
RUN python manage.py migrate --noinput
```

The application uses SQLite as its database.

Database changes made inside the container are not persistent if the container is removed, unless persistent storage is configured.

## 11. Docker Configuration

- Python version: 3.11
- Django version: 4.1.10
- Container port: 8080
- Host port: 8080
- Environment variable: `PYTHONUNBUFFERED=1`
- Docker image: `romanartem/todoapp:1.0.0`

The Django development server starts using:

```bash
python manage.py runserver 0.0.0.0:8080
```

## 12. Publish the Image to Docker Hub

Log in to Docker Hub:

```bash
docker login
```

Tag the image:

```bash
docker tag todoapp:latest romanartem/todoapp:1.0.0
```

Push the image:

```bash
docker push romanartem/todoapp:1.0.0
```

## Notes

This configuration is intended for development and educational purposes.

For production deployment, additional security settings, persistent database storage, and a production-ready application server are recommended.
