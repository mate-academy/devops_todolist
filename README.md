# Devops ToDo list

# Docker Hub Repository:

The Docker image for this application is hosted on Docker Hub and can be pulled using the following command:

docker pull konstant1nou77/todoapp:1.0.0

# Build the Docker Image:

Clone the repository and navigate to the project directory:

docker build -t konstant1nou77/todoapp:1.0.0 .

# Run the Docker Container

docker run -p 8080:8080 konstant1nou77/todoapp:1.0.0

The application will be available at: http://0.0.0.0:8080