# TodoApp Docker Deployment

Docker Hub Link: https://hub.docker.com/r/yurirr/todoapp

Instructions:

1. Make sure Docker is installed.

2. Build the Docker image:

```bash
docker build -t <your-docker-username>/todoapp:1.0.0 .
Push the image to Docker Hub:

docker push <your-docker-username>/todoapp:1.0.0


Run the container in detached mode and forward port 8080:

docker run -d -p 8080:8080 <your-docker-username>/todoapp:1.0.0


Inside the container, the server runs with:

python manage.py runserver 0.0.0.0:8080


Access the app via browser:

http://localhost:8080/
