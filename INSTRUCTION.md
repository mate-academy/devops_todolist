## Docker Hub Repository
My Docker Hub repository with the ToDo app image: https://hub.docker.com/repository/docker/mutnenka/todoapp/tags/1.0.0

## Building the Docker Image
Make sure you are in the root folder of the ToDo app (where `Dockerfile` and `requirements.txt` are located).
```bash
# Build the Docker image
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp .
```

You can change the Python version if needed (Python 3.8+ is required).

## Running the Container
```bash
# Run the container
docker run -p 8080:8080 todoapp
```

* `-p 8080:8080` maps the container port 8080 to your local machine.
* The Django server will start on `0.0.0.0:8080`.

## Accessing the Application
Open your browser and go to:
```
http://localhost:8080
```

You should see the ToDo app landing page. You can also explore the API if available.
