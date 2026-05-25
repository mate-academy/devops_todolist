# ToDo App — Docker Instructions

## Docker Hub Repository

Image is available at: https://hub.docker.com/r/tanyasavenko/todoapp

## Building the image

1. Clone the repository:
```bash
   git clone https://github.com/tanyasavenko/devops_todolist.git
   cd devops_todolist
```

2. Build the Docker image:
```bash
   docker build -t todoapp:1.0.0 .
```

## Running the container

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Accessing the application

Open your browser and navigate to:

```
http://localhost:8080
```