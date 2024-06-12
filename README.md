Image on Docker Hub repository: https://hub.docker.com/repository/docker/cthusq/todo/general
To build container: docker build . -t todoapp:1.0.0 
To run container: docker run -p 8080:8080 todoapp:1.0.0
This command maps the container's port 8080 to the host's port 8080.

Once the container is running, you can access the application by visiting http://localhost:8080 in your web browser.
