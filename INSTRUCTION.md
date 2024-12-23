

# Instructions for Building and Running the ToDo App Container

[Link to official Docker Hub repository](https://hub.docker.com/repository/docker/semorgana/todoapp/general)

## Pull the Docker Image

To pull the Docker image from Docker Hub, use the following command:

```bash
docker pull semorgana/todoapp:1.0.0
```

## Run the Docker Container

To run the Docker container, use the following command:

```bash
docker run --name todo-server -d -p 8080:8080 semorgana/todoapp:1.0.0
```

## Access the Application

Once the container is running, you can access the application via a browser at:

[http://localhost:8080](http://localhost:8080)


## Build Your Own Image

To build your own Docker image using the provided `Dockerfile`, follow these steps:

1. Change directory to the root of the project:

```bash 
cd /path/to/project/root
```

2. Build the Docker image:

```bash 
docker build -t todoapp:1.0 .
```

3. Run the Docker container:

```bash
docker run --name todo-server -d -p 8080:8080 todoapp:1.0
```
## Access the Application

Once the container is running, you can access the application via a browser at:

[http://localhost:8080](http://localhost:8080)