# Devops To-Do List Application

This is a simple Django-based To-Do List application built with Docker.



## Docker Hub Repository

You can find the Docker image for this application on Docker Hub:

https://hub.docker.com/repository/docker/limbx/todoapp

To pull the image from Docker Hub 

docker pull limbx/todoapp:1.0.0



## GitHub

### Step 1: Clone the Repository
If you're working with the source code, clone the project repository:

git clone https://github.com/L1mbxbx/devops_todolist
cd devops_todolist

### Step 2: Build the Docker Image
If you want to build the Docker image locally instead of pulling from Docker Hub, run:

docker build -t todoapp:1.0.0 .

### Step 3: Running the Docker Container
To run the container, use the following command:

docker run -d -p 8080:8080 todoapp:1.0.0

### Step 4: Access the Application in a Browser

Once the container is running, open a web browser and go to:

http://localhost:8080



## Stopping the Container

To stop the running container, find the container ID using:

docker ps
docker stop <container_id>

Replace <container_id> with the actual container ID.
