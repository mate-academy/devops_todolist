# Docker ToDo List

## Docker Hub
https://hub.docker.com/r/feofanyq/todoapp

## Build

Clone the repository and navigate to the project directory:

```bash
git clone https://github.com/steelpush-aqa/devops_todolist.git

cd devops_todolist
```

Build the Docker image:

```bash
docker build -t feofanyq/todoapp:1.0.0 .
```

## Run

Run the container in detached mode and map port 8080:

```bash
docker run -d -p 8080:8080 --name todoapp feofanyq/todoapp:1.0.0
```

## Access the application

Open the following URL in a web browser:

http://localhost:8080
