# Django ToDo App — Docker Instructions

## Requirements
- Python 3.8+ is required by the project (Django 4).

## Docker Hub image
https://hub.docker.com/r/dtsy/todoapp

> Note: The Dockerfile runs `python manage.py migrate` during the image build step.
> This assumes the app can create/use its database during build (commonly SQLite in educational projects).
> If the project is configured to use an external DB (e.g. Postgres), migrations at build time may fail.

---

## Build image locally (name it `todoapp`)
From the project root:

```bash
docker build -t todoapp .
```