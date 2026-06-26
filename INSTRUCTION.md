ToDo App Docker Instructions

1. Docker Hub Repository
The pre-built image is available at the following link:
https://hub.docker.com/r/trickykot3/todoapp

2. Build Instructions
Build for local use:

docker build -t todoapp .

Build for pushing to Docker Hub:

docker build -t trickykot3/todoapp:1.0.0 .

3. Run Instructions
Run the local image:

docker run -p 8080:8080 --name my_todo_app todoapp

Run the image from Docker Hub:

docker run -p 8080:8080 --name my_todo_app trickykot3/todoapp:1.0.0

(Note: The todoapp and trickykot3/todoapp:1.0.0 tags refer to the same build; the only difference is the naming convention for local testing vs. registry deployment.)

4. Accessing the Application
Once the container is up and running, you can access the application via your web browser at:
http://localhost:8080