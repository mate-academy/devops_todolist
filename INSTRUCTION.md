# Deployment Instructions for ToDo App

## Docker Hub Repository
The Docker image for this application is available at:

https://hub.docker.com/repository/docker/iramladanovych/todoapp/general


## Building the Docker Image
To build the Docker image locally, navigate to the project directory and run the following command:

```sh
 docker build -t YOUR_DOCKER_USERNAME/todoapp:1.0.0 .
```


## Running the Container
To run the application using Docker, execute the following command:

```sh
 docker run -d -p 8000:8000 YOUR_DOCKER_USERNAME/todoapp:1.0.0
```

This will start the application in a detached mode and bind it to port 8000.

## Accessing the Application
Once the container is running, you can access the application in your browser by visiting:

```
http://localhost:8000
```

If deployed on a remote server, replace `localhost` with the server's IP address or domain.
