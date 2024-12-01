# Building and Running the ToDo App

## Prerequisites:
- Docker must be installed on your system.

## Steps:
1. Build the Docker image:
   ```bash
   docker build -t todoapp:1.0.0 .
Run the container:

bash
Copy code
docker run -p 8080:8080 todoapp:1.0.0
Access the application in your browser:

Navigate to http://localhost:8080 to access the application.
Docker Hub Repository
The Docker image is available on Docker Hub:
ToDo App Docker Hub Repository
