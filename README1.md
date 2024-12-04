# ToDo App

This is a Django ToDo app.

## Docker Image

The Docker image for this app is available on Docker Hub:
https://hub.docker.com/r/alexhf92/todoapp
## Build and Run Instructions

To build the Docker image:

docker build -t todoapp:1.0.0 .

docker run -p 8000:8000 todoapp:1.0.0

##  Accessing the Application
Visit http://localhost:8000 in your browser to access the Django ToDo app.