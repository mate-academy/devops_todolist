Docker Hub Repository
The application image is available in Docker Hub:
https://hub.docker.com/r/lyutikmm/todoapp

Build the Docker Image
To build the Docker image locally, run the following command from the project root directory:
docker build -t todoapp:1.0.0 .

Run the Container
To run the application container in detached mode and expose it on port 8080, use:
docker run -d -p 8080:8080 --name todoapp-container todoapp:1.0.0

Access the Application
After the container is running, open the following URL in your browser:
http://localhost:8080

Check Running Containers
To verify that the container is running:
docker ps

Stop the Container
To stop the container:
docker stop todoapp-container

Remove the Container
To remove the stopped container:
docker rm todoapp-container