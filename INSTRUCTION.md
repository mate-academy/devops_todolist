# Django ToDo App Docker Image

## Docker Hub repository

Docker image is available here:

https://hub.docker.com/r/ecl1pseeeee/todoapp

Image tag:

todoapp:1.0.0

---

## Build Docker image

To build the image locally run:

docker build -t todoapp .

---

## Run Docker container

To run the container execute:

docker run -d -p 8080:8080 --name todoapp-container todoapp

---

## Access the application

Open your browser and go to:

http://localhost:8080

You should see the Django ToDo application running inside the Docker container.

