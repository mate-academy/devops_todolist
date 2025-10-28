# ToDo App — Docker Instructions

## Docker Hub Repository
App image is available here:  
[https://hub.docker.com/r/zhevlakow/todoapp](https://hub.docker.com/r/zhevlakow/todoapp)

## Build the Docker Image
```bash
# Clone the repository
git clone https://github.com/zhevlakow/devops_todolist.git
cd devops_todolist

# Build the Docker image
docker build -t todoapp:1.0.0 --build-arg PYTHON_VERSION=3.11 .
```
## Run the container:
```bash
# Run container
docker run -d -p 8080:8080 --name todoapp-container todoapp:1.0.0
```
## Accessing the Application

Once the container is running, you can access the ToDo application in your browser:

- **Main application:** http://localhost:8080
- **API endpoint:** http://localhost:8080/api/