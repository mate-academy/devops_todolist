# ToDo App

## Docker Hub Repository
You can pull the prebuilt Docker image from my personal Docker Hub repository:

[ToDo App Docker Hub Repository](https://hub.docker.com/r/ruslanskl/todoapp)

## Pull and Run Instructions

- Ensure Docker is installed and running on your machine. You can download Docker from [here](https://www.docker.com/get-started).

### Pull the Docker Image
To pull the prebuilt Docker image from Docker Hub, run the following command:

`docker pull ruslanskl/todoapp:1.0.0`

This command will download the todoapp:1.0.0 image from the Docker Hub repository.

### Run the Docker Container

Once the image is pulled, you can run the Docker container with the following command:

`docker run -p 8080:8080 ruslanskl/todoapp:1.0.0`

This will start the container, binding port 8080 inside the container to port 8080 on your local machine.

## Access the Application
After running the container, open your web browser and navigate to the following URL to access the ToDo app:

http://localhost:8080
You should now be able to see the ToDo app running and interact with it via your browser.
