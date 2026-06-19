# Docker Core / Containerizing an App / Docker by practice | ToDo App

## Docker Hub Repository

The application image is available on Docker Hub:

🔗 [https://hub.docker.com/repository/docker/maxmlv/todoapp](https://hub.docker.com/repository/docker/maxmlv/todoapp)

## Build the Image

Clone repository and build the image locally:

```bash
git clone https://github.com/maxmlv/devops_todolist.git
cd devops_todolist
docker build -t todoapp:1.0.0 .
```

## Pull the Image

Or you can pull the prebuilt image from Docker Hub:

```bash
docker pull maxmlv/todoapp:1.0.0
```

## Run the Container

```bash
docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
```

- `-d` — run in detached mode (in the background)
- `-p 8080:8080` — map container port 8080 to host port 8080
- `--name todoapp` — name the running container

## Access the Application

Once the container is running, open your browser and go to:

[http://localhost:8080](http://localhost:8080)

## Stopping the Container

```bash
docker stop todoapp
```