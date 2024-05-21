a link to your personal Docker Hub repository win an app image: https://hub.docker.com/r/salaxambar/todoapp
all the instructions for building and running the container:
build: docker build -t todoapp:1.0.0 .
run: docker run -p 8080:8080 todoapp:1.0.0