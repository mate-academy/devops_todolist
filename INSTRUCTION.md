Instructions for Building, Publishing, and Running the Todo App
Prerequisites & Getting the Code

    Docker Engine installed on your system.
    Git installed on your system.
    Note for Linux users: If your user is not added to the docker group, you will need to prepend sudo to all Docker commands.

First, clone the repository to your local machine and navigate into the project directory:

git clone https://github.com/dimamikolaichuk13-jpg/devops_todolist.git
cd devops_todolist

Docker Hub Repository

    Repository Link: [mykolaichukdmytro/todoapp on Docker Hub](https://hub.docker.com/r/mykolaichukdmytro/todoapp)

    Image Tag: mykolaichukdmytro/todoapp:1.0.0

    Instructions for Building the Container Image
    Make sure you are in the root directory containing your Dockerfile and requirements.txt.
    During the build process, the instruction RUN python manage.py migrate executes, meaning database migrations are applied at build time and the db.sqlite3 database file is baked directly into the final image.

To build the image using the default Python version (3.12.3) and tag it for Docker Hub:

docker build -t mykolaichukdmytro/todoapp:1.0.0 .

To build the image with a custom Python version using build arguments (--build-arg), use a separate tag to avoid overwriting your main release tag:

docker build --build-arg PYTHON_VERSION=3.11 -t todoapp:py311 .

    Instructions for Running the Container Note: The options below are mutually exclusive alternatives. Since both use --name todoapp-container, if you want to test both, make sure to stop and remove the container between runs (see Section 3). Option A: Running the locally built image

docker run -d -p 8080:8080 --name todoapp-container mykolaichukdmytro/todoapp:1.0.0

Option B: Running without local build (Pull from Docker Hub)
If you prefer not to build the image locally, you can pull the pre-built image directly from Docker Hub and run it:

docker pull mykolaichukdmytro/todoapp:1.0.0
docker run -d -p 8080:8080 --name todoapp-container mykolaichukdmytro/todoapp:1.0.0

    Managing the Running Container

    View container logs:

docker logs todoapp-container

    Stop the container:

docker stop todoapp-container

    Remove the container:

docker rm todoapp-container

    Instructions on Accessing the Application via a Browser
    Once the container is successfully running, open your web browser and navigate to: http://localhost:8080
    Expected Output: You should see the Django Todo application interactive dashboard/interface, allowing you to create, view, and manage your tasks.

Port Conflict Note
If port 8080 is already occupied on your host machine, you can map the container to a different port (e.g., 8081) by changing the left side of the -p flag:

docker run -d -p 8081:8080 --name todoapp-container mykolaichukdmytro/todoapp:1.0.0

Then access the app via http://localhost:8081. 5. Publishing to Docker Hub (Optional)
If you have built a new version and want to push it to your public repository:

    Log in to your Docker Hub account via the terminal:

docker login

    Push the built image to your repository:

docker push mykolaichukdmytro/todoapp:1.0.0
