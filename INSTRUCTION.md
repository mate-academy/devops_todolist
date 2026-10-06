# ToDo App Container Instructions

Docker Hub repository: https://hub.docker.com/r/rimbozero/todoapp

## Build the image locally

```bash
docker build -t todoapp:1.0.0 .
```

## Run the container

```bash
docker run --rm -d -p 8080:8080 --name todoapp-container todoapp:1.0.0
```

## Access the application in a browser

Open the following URL in your browser:

```text
http://localhost:8080/
```

## Push the image to Docker Hub

Log in to Docker Hub first:

```bash
docker login
```

Then tag the image for your personal Docker Hub repository and push it:

```bash
docker tag todoapp:1.0.0 rimbozero/todoapp:1.0.0
docker push rimbozero/todoapp:1.0.0
```

## Notes

- The Dockerfile uses a Python base image with an `ARG` value for the version.
- The app starts with `python manage.py runserver 0.0.0.0:8080`.
- The migration command is executed during the image build with `RUN python manage.py migrate`.
- `ENV PYTHONUNBUFFERED=1` is enabled so Python logs are written directly to stdout/stderr.
