Django ToDo List — Docker Instructions
This project is a Django ToDo List application with user accounts, an API, and a web interface.

Docker Hub image
Repository: aniapavliuk9/todoapp
Image: aniapavliuk9/todoapp:1.0.0
Prerequisites
Docker Desktop or Docker Engine installed and running.
A local copy of this Git repository to build the image from source.
Run the commands below from the repository root (the directory containing Dockerfile and manage.py).

1. Build the Docker image
docker build --platform linux/amd64 --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
The Dockerfile has two stages: builder installs Python dependencies, and runtime contains the application and runs the Django database migrations during the image build.

Verify that the image exists:

docker images
2. Run the container
If port 8080 is available on the host, run:

docker run --platform linux/amd64 -d --name todo-container -p 8080:8080 todoapp:1.0.0
If another application is using host port 8080, use this alternative command instead (do not run both):

docker run --platform linux/amd64 -d --name todo-container -p 8081:8080 todoapp:1.0.0
The Django development server listens on 0.0.0.0:8080 inside the container. The first port number in -p is the port on your computer; the second is the container port.

3. Open the application in a browser
With -p 8080:8080:

Web application: http://localhost:8080/
API: http://localhost:8080/api/
With -p 8081:8080:

Web application: http://localhost:8081/
API: http://localhost:8081/api/
4. Run the image from Docker Hub
You can also download and run the published image without building it locally:

docker pull --platform linux/amd64 aniapavliuk9/todoapp:1.0.0
docker run --platform linux/amd64 -d --name todo-container -p 8080:8080 aniapavliuk9/todoapp:1.0.0
If host port 8080 is occupied, replace -p 8080:8080 with -p 8081:8080. Ensure that a container named todo-container does not already exist before running this command.

5. Check the container and view logs
docker ps
docker logs todo-container
To follow the logs as they appear:

docker logs -f todo-container
6. Stop, restart, or remove the container
docker stop todo-container
docker start todo-container
To remove a stopped container if you want to create a new one with the same name:

docker stop todo-container
docker rm todo-container
Note: This is a learning project that runs Django's development server. Its local SQLite data is stored inside the container and may be lost when the container is removed.