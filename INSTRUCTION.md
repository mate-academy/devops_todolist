# Django ToDo App Docker Image

## Docker Hub Repository

Docker image is available at:

https://hub.docker.com/r/ecl1pseeeee/todoapp

Image tag:

ecl1pseeeee/todoapp:1.0.0

---

## Build Docker Image

To build the Docker image locally run:

docker build -t todoapp .

---

## Run Docker Container

To start the container run:

docker run -p 8080:8080 todoapp

---

## Run Image From Docker Hub

You can also run the image directly from Docker Hub:

docker run -p 8080:8080 ecl1pseeeee/todoapp:1.0.0

---

## Access the Application

Open your browser and navigate to:

http://localhost:8080

The Django ToDo application should now be running in your browser.

---

## Notes

The Docker image uses:

* Python base image defined via ARG
* Multi-stage build
* ENV variable `PYTHONUNBUFFERED=1`
* Database migrations executed during build
* Django server running on `0.0.0.0:8080`
