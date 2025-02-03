# ToDo App Docker Instructions

Here is [Docker Hub Repository](hhttps://hub.docker.com/repository/docker/nataliiadev/todo-image/general)

## 1. Clone the Repository

First, clone the repository and navigate into the project directory:

```bash
git clone https://github.com/NataliiaHen/devops_todolist.git
cd devops_todolist
```

## 2. Build the Docker Image

Build the Docker image:

```bash
docker build -t todoapp:1.0.0 .
```

## 3. Run the Container

Run the container and expose port 8080:

```bash
docker run -d -p 8080:8080 todoapp:1.0.0
```

## 4. Application start 🚀

Follow the link to accessing the application via a browser:

```
http://localhost:8080
```
