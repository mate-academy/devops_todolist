Use the following links below:

1. Link to the Docker Hub repository with an app image:
    https://hub.docker.com/repository/docker/nosenkoalena501/todoapp/general

2. All instructions for building and running the container:
    - for building image run:
        docker build . -t todoapp
    - for running container:
        docker run -p 8080:8080 todoapp:latest
    - for tag image:
        docker tag todoapp:latest nosenkoalena501/todoapp:1.0.0
    - for push image to the Docker Hub:
        docker push nosenkoalena501/todoapp:1.0.0

3. Instructions on accessing the application via a browser:
   - API:
    http://localhost:8080/api/
   - Landing page:
    http://localhost:8080/