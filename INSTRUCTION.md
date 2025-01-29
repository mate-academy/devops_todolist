
# TodoApp Docker Image Instructions

## Docker Hub Repository

The image for this application is available on my Docker Hub repository.

You can find the image here: [My Docker Hub Repository](https://hub.docker.com/repository/docker/narberal90/todoapp/)

## Prerequisites

Before you begin, ensure that the following are installed on your machine:

- **Docker**: Docker must be installed and running on your machine. If you haven't installed it yet, follow the official guide: https://docs.docker.com/get-docker/
- **Git**: Git should be installed to clone the repository. If it's not installed, you can get it from: https://git-scm.com/

## Cloning the Repository

To get the project on your local machine, clone the repository using Git:

```bash
   git clone https://github.com/Narberal90/devops_todolist/tree/develop
   cd devops_todolist
```

## Building the Docker Image

Follow these steps to build the Docker image locally:

1. Ensure that you're in the root directory of the cloned repository.
2. Run the following command to build the Docker image:

   ```bash
   docker build -t todoapp:1.0.0 .
   ```

   This command will create the Docker image with the `1.0.0` tag.

## Running the Container

Once the image is built, you can run the application inside a Docker container:

```bash
docker run -d -p 8080:8080 todoapp:1.0.0
```

- The `-d` flag runs the container in detached mode (in the background).
- The `-p 8080:8080` flag maps port 8080 of the container to port 8080 on your host machine.

Now, the container is running, and you can access the app from your local machine.

## Accessing the Application

Once the container is running, open your web browser and navigate to:

```
http://localhost:8080
```

You should see the TodoApp running in the browser.
