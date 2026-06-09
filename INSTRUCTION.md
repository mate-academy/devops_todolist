# ToDo App — Docker Instructions

## Docker Hub
https://hub.docker.com/r/1ntact/todoapp

## Build the image
```bash
docker build -t todoapp .
```

## Run the container
```bash
docker run -d -p 8080:8080 --name todoapp 1ntact/todoapp:1.0.0
```

## Access the application
Open your browser and go to: http://localhost:8080