The docker image:
https://hub.docker.com/r/user2134567432/todoapp

BUILD THE DOCKER IMAGE:
docker build -t user2134567432/todoapp:1.0.0 .

RUN THE CONTAINER:
docker run -p 8000:8080 --name todoapp-container user2134567432/todoapp:1.0.0

ACCESS THE APPLICATION
Open the following URL in your browser:
http://localhost:8000

THE API is available at:
http://localhost:8000/api/