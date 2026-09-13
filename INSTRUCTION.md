Docker Hub repository:
https://hub.docker.com/repository/docker/kapany322/todoapp/general

Instructions:

To build an image from Dockerfile run:
docker build . -t todoapp:1.0.0

To run an container from the image run:
docker run -p 8080:8080 todoapp:1.0.0

Because we`ve used "-p 8080:8080" the application listening 8080 port, so to accsess the app you should use link "http://0.0.0.0:8080/"