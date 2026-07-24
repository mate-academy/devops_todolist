# INSTRUCTION

## Docker Hub Repository

The application image is published at:

https://hub.docker.com/r/mulykovdockerdevops/todoapp

Pull it directly with:

```bash
docker pull mulykovdockerdevops/todoapp:1.0.0
```

## Building the image locally

Clone the repository and navigate to its root (where the `Dockerfile` is located), then run:

```bash
docker build -t mulykovdockerdevops/todoapp:1.0.0 .
```

## Running the container

Start the container with port mapping to expose the app on your local machine:

```bash
docker run -d -p 8080:8080 --name todoapp mulykovdockerdevops/todoapp:1.0.0
```

- `-d` — runs the container in detached (background) mode
- `-p 8080:8080` — maps port 8080 on the host to port 8080 inside the container, where Django is listening
- `--name todoapp` — assigns a friendly name to the running container

To stop and remove the container later:

```bash
docker stop todoapp
docker rm todoapp
```

## Accessing the application

Once the container is running, open your browser and go to:

```
http://localhost:8080
```