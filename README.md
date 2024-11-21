# Todo List Web Application

This repository contains a Todo List web application built with Django.

## Docker Hub Repository

The Docker image for this application is hosted on Docker Hub. You can find it [here](https://hub.docker.com/r/krillpolozenko/todoapp).

## Instructions

### Build the Docker Image

```bash
docker build -t todoapp .
```

### Run the Docker
```bash
docker run -p 8080:8080 krillpolozenko/todoapp:1.0.0
```

To access the application, simply open your web browser and enter the following URL:

```bash
http://127.0.0.1:8080/
```

License
This project is licensed under the MIT License.
