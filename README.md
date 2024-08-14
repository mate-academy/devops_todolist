# Django ToDo list

## Prerequisites

Before you begin, ensure you have met the following requirements:
- Docker installed on your machine.

## Docker Hub Repository

 You can find the Docker image for this application on Docker Hub at: [Docker hub](https://hub.docker.com/repository/docker/dikey947/todoapp/general)
## Running the Container

Run the following commands:

```bash
docker pull dikey947/todoapp:1.0.0
docker run -d -p 8000:8080 --name todoapp dikey947/todoapp:1.0.0
```

## Accessing the Application
Once the application is running, you can access it by opening your web browser and navigating to:

http://localhost:8000
