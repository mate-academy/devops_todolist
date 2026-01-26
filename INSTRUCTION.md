Link to Docker Hub repository: https://hub.docker.com/repository/docker/dimasem08/todoapp/tags

Instructions:
1. Follow to the Docker Hub repository
2. Clone the repo
3. Build the Docker images by following comand: docker build -f Dockerfile . -t todoapp:1.0.0
4. Run the container: docker run -p 8080:8080 todoapp:1.0.0
5. Open browser and navigate to http://localhost:8080