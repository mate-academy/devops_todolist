# ToDo App — Docker Instructions

## Docker Hub

Docker image is available on Docker Hub:

**Docker Hub repository:** `https://hub.docker.com/repository/docker/qwertyasd0933/todoapp/general`

## Building the Docker Image

Make sure Docker is installed and running.

Clone the repository and navigate to the project directory:

```bash
cd path/to/todo-app
```

Build the Docker image with the name `todoapp`:

```bash
docker build -t todoapp .
```

## Running the Container

Run the container and map port `8080` from the container to port `8080` on the host:

```bash
docker run --rm -p 8080:8080 todoapp
```

The Django application will start inside the container and listen on:

```text
0.0.0.0:8080
```

## Accessing the Application

Open a web browser and go to:

```text
http://localhost:8080
```

The ToDo application should be available in the browser.

## Running the Image from Docker Hub

You can also pull the image from Docker Hub:

```bash
docker pull qwertyasd0933/todoapp
```

Then run it:

```bash
docker run --rm -p 8080:8080 qwertyasd0933/todoapp
```

Open the following address in your browser:

```text
http://localhost:8080
```

## Stopping the Container

If the container is running in the foreground, press:

```text
Ctrl+C
```

The container will stop automatically because it was started with the `--rm` option.
