# ToDo app: Docker instructions

## Docker Hub repository

https://hub.docker.com/r/valyadard/todoapp

Image: `valyadard/todoapp:1.0.0`

## Build the image

Run this command from the project directory:

```bash
docker build -t todoapp .
```

## Run the container

Make sure Docker is running and port 8080 is available, then run:

```bash
docker run -p 8080:8080 todoapp
```

## Open the application

Open http://localhost:8080 in your browser.

To stop the container, press Ctrl+C in the terminal where it is running.

## Run the image from Docker Hub

Alternatively, download and run the published image:

```bash
docker pull valyadard/todoapp:1.0.0
docker run -p 8080:8080 valyadard/todoapp:1.0.0
```

Then open http://localhost:8080 in your browser.
