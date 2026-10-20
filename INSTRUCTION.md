# Django ToDo App - Docker Instructions

## 📦 Docker Hub Repository
* Link: [https://hub.docker.com/r/dmytro0908/todoapp](https://hub.docker.com/r/dmytro0908/todoapp)

## 🛠️ Building the Image
To build the Docker image locally, run the following command in the root directory of the project:
```bash
docker build --build-arg PYTHON_VERSION=3.10 -t dmytro0908/todoapp:1.0.0 .
🚀 Running the Container
To run the application inside a container and map port 8080:

Bash
docker run -d -p 8080:8080 --name todo-app-container dmytro0908/todoapp:1.0.0
🌐 Accessing the Application
Once the container is running, open your web browser and navigate to:

Application / Landing Page: http://localhost:8080/ (or http://0.0.0.0:8080/)

API: http://localhost:8080/api/