# Django Todo List Instruction

## Docker Hub Repository
You can find the pre-built Docker image of the application in my Docker Hub repository:

[Docker Hub Repository Link](https://hub.docker.com/repository/docker/volodymyrdv/todoapp/general)
___
## Building and Running the Container
### Clone the Repository
If you haven't already, clone the project repository:
```
git clone https://github.com/Volodymyrdv/devops_todolist
```
### Build the Docker Image
To build the Docker image locally, run:
```
docker build -t todoapp:1.0.0 .
```
### Run the Docker Container
To start the container, use:
```
docker run -p 8080:8080 todoapp:1.0.0
```
### Accessing the Application
Once the container is running, open a web browser and go to:
```
http://localhost:8080
```