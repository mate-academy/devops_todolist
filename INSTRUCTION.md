# Instructions for ToDo App

## Building the Docker Image
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd <project-directory>
   ```
3. Build the Docker image:
   ```bash
   docker build -t todoapp:1.0.0 .
   ```
4. Push the image to Docker Hub:
   ```bash
   docker tag todoapp:1.0.0 <your-dockerhub-username>/todoapp:1.0.0
   docker push <your-dockerhub-username>/todoapp:1.0.0
   ```

## Running the Docker Container
1. Run the container:
   ```bash
   docker run -p 8080:8080 <your-dockerhub-username>/todoapp:1.0.0
   ```
2. Open your browser and navigate to:
   ```
   http://localhost:8080/
   ```

## Accessing the Application
- The application should be accessible at `http://localhost:8080/`.
- You can log in, manage your to-do list, and interact with the API.

## Docker Hub Repository
You can view the image on Docker Hub here:  
[Your Docker Hub Repository Link](https://hub.docker.com/repository/docker/<your-dockerhub-username>/todoapp)
