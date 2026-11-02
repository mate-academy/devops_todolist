# ToDo Application — Docker Instructions

## Docker Hub Repository

The Docker image is available at:

[https://hub.docker.com/repository/docker/georgeatoyan/todoapp/general](https://hub.docker.com/repository/docker/georgeatoyan/todoapp/general)

Image: `georgeatoyan/todoapp:1.0.0`

## Prerequisites

- Docker Desktop installed and running.
- Access to the terminal (PowerShell, CMD, or Linux shell).

## 1. Build the Docker Image

Clone the repository:

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
cd devops_todolist
```

Build the image:

```bash
docker build -t todoapp:1.0.0 .
```

## 2. Run the Container

Start the application:

```bash
docker run -d --name todoapp-container -p 8080:8080 todoapp:1.0.0
```

The application will run inside the container on port `8080`.

## 3. Access the Application

Open your browser and navigate to:

http://localhost:8080

## 4. Check Container Status

```bash
docker ps
```

View application logs:

```bash
docker logs todoapp-container
```

## 5. Stop and Remove the Container

Stop the container:

```bash
docker stop todoapp-container
```

Remove the container:

```bash
docker rm todoapp-container
```

## 6. Pull the Image from Docker Hub (Optional)

Instead of building the image locally, you can download it from Docker Hub:

```bash
docker pull YOUR_USERNAME/todoapp:1.0.0
```

Then run it:

```bash
docker run -d --name todoapp-container -p 8080:8080 YOUR_USERNAME/todoapp:1.0.0
```
