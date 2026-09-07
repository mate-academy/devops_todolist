# ToDo App — Docker Instructions

## Docker Hub repository
https://hub.docker.com/r/mavik27/todoapp

## Build the image
```bash
docker build -t todoapp .
```

## Run the container
```bash
docker run -p 8080:8080 todoapp
```

Or pull the pre-built image from Docker Hub:
```bash
docker pull mavik27/todoapp:1.0.0
docker run -p 8080:8080 mavik27/todoapp:1.0.0
```

## Access the application
Open your browser and go to:
- Landing page: http://localhost:8080/
- API: http://localhost:8080/api/