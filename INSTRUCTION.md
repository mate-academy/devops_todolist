# Docker Hub Repository:
https://hub.docker.com/repository/docker/nnnikol/todoapp/general

# Building the docker image
Run next command in terminal from the root folder: docker build -f Dockerfile -t todoapp:1.0.0 .

# Running the container
Run next command in terminal from the root folder: docker run -p 8080:8080 todoapp:1.0.0

# Accessing the application 
Open your browser and go to http://localhost:8080/
