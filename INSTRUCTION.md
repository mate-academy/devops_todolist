# Todo App Docker Instructions

## Docker Hub Repository
- **Repository Link**: [eugene9451/todoapp](https://hub.docker.com/r/eugene9451/todoapp)
- **Docker Image**: `eugene9451/todoapp:1.0.0`

## How to Build the Container
To build the Docker image locally, navigate to the root directory of the project and run the following command:

```bash
docker build -t todoapp:1.0.0 .
```

## How to Run the Container
To start the container, run the following command:

```bash
docker run -p 8080:8080 todoapp:1.0.0
```

## Accessing the Application
Once the container is running, you can access the application through your web browser.

Open your browser and navigate to:
[http://localhost:8080/](http://localhost:8080/)