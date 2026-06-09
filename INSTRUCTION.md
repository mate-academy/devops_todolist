# ToDo App — Docker Instructions

## Docker Hub
https://hub.docker.com/r/1ntact/todoapp

## Build the image
docker build -t 1ntact/todoapp:1.0.0 .

## Run the container
docker run -d -p 8080:8080 --name todoapp 1ntact/todoapp:1.0.0

## Access the application
Open your browser and go to: http://localhost:8080