# TodoApp — Docker Instructions

## Docker Hub Repository

The Docker image for the TodoApp is available on Docker Hub:

https://hub.docker.com/r/ikocherovets/todoapp

Image tag:
ikocherovets/todoapp:1.0.0

---

## Requirements

- Docker installed
- Docker daemon running

---

## Build the Image Locally

From the project root directory, run:

docker build -t todoapp:1.0.0 -f Dockerfile.multistage .

Verify that the image was built successfully:

docker images

---

## Run the Container Locally

Run the container in the foreground:

docker run --name todoapp -p 8080:8080 todoapp:1.0.0

Run the container in the background:

docker run -d --name todoapp -p 8080:8080 todoapp:1.0.0

Stop and remove the container:

docker stop todoapp  
docker rm todoapp

---

## Run Using the Docker Hub Image

Pull the image from Docker Hub:

docker pull ikocherovets/todoapp:1.0.0

Run the container:

docker run --name todoapp -p 8080:8080 ikocherovets/todoapp:1.0.0

---

## Access the Application in a Browser

Open the following URL in your browser:

http://localhost:8080
