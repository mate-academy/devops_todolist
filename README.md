### Download an image from docker hub `https://hub.docker.com/repository/docker/script1988/todoapp`
* `docker pull script1988/todoapp`

### Explore
* create a container using `docker build -t todoapp:1.0.0 .`
* start the container `docker run -p 8080:8080 todoapp:1.0.0`
* application should be accessible on `localhost:8080` or `127.0.0.1:8080` in your browser
