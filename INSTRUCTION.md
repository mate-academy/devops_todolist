Docker Hub Repository
The Docker image is published at:
Docker Hub: https://hub.docker.com/r/vsevolodbilyi
Image: vsevolodbilyi/todoapp:1.0.0
Prerequisites

- Docker Desktop installed and running.
- Git installed if you want to clone the source code.

1. Clone the Repository
   Clone the GitHub repository and navigate to the project directory:
   git clone https://github.com/vsevolodbilyi/devops_todolist.git
   cd devops_todolist
2. Build the Docker Image
   Build the image from the directory containing the Dockerfile:
   docker build -t todoapp:1.0.0 .
   The Dockerfile uses a multi-stage build, installs Python dependencies, executes Django database migrations, and configures the application to listen on port 8080.
3. Run the Container
   Start the application in detached mode and map port 8080 on your computer to port 8080 inside the container:
   docker run -d --name todoapp-container -p 8080:8080 todoapp:1.0.0
4. Access the Application
   Open the following URL in your browser:
   http://localhost:8080
   The ToDo application should now be accessible from your local machine.
5. Check Container Status and Logs
   Check whether the container is running:
   docker ps
   View the application logs:
   docker logs todoapp-container
6. Stop and Remove the Container
   Stop the application:
   docker stop todoapp-container
   Remove the stopped container:
   docker rm todoapp-container
7. Run the Image from Docker Hub
   Download the published image:
   docker pull YOUR_DOCKERHUB_USERNAME/todoapp:1.0.0
   Start the application using the downloaded image:
   docker run -d --name todoapp-container -p 8080:8080 YOUR_DOCKERHUB_USERNAME/todoapp:1.0.0
   Open http://localhost:8080 in your browser to access the application.
   Source Code
   GitHub repository: https://github.com/vsevolodbilyi/devops_todolist
