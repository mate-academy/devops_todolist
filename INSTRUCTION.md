# ToDo App — Docker Instructions

## Docker Hub Repository

The image is available on Docker Hub:
https://hub.docker.com/r/olehkovalievskyi/todoapp

## Prerequisites

- Docker installed on your machine
- (Optional) Docker Hub account, if you want to pull the pre-built image

## Build the image locally

Clone the repository and navigate to its root directory, then run:

```bash
docker build -t todoapp .
```

## Run the container

```bash
docker run -d -p 8080:8080 --name todoapp-container todoapp
```

Alternatively, you can pull and run the pre-built image directly from Docker Hub:

```bash
docker pull olehkovalievskyi/todoapp:1.0.0
docker run -d -p 8080:8080 --name todoapp-container olehkovalievskyi/todoapp:1.0.0
```

## Stopping the container

```bash
docker stop todoapp-container
```

## Access the application

Once the container is running, open your browser and navigate to:

http://localhost:8080

## Notes

- The application listens on `0.0.0.0:8080` inside the container.