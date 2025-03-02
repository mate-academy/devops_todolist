# INSTRUCTION.md

## Docker ToDo App Instructions

This document provides all the necessary steps to build, run, and access the Django ToDo application.

---

## Building the Docker Image

1. Clone the repository:

   ```bash
   git clone https://github.com/mate-academy/devops_todolist.git
   cd devops_todolist
   ```

2. Build the Docker image with the following command:

   ```bash
   docker build --build-arg PYTHON_VERSION=3.12 -t todoapp:1.0.0 .
   ```

---

## Pushing the Image to Docker Hub

To share your image publicly (optional):

1. Login to your Docker Hub account:

   ```bash
   docker login
   ```

2. Tag the Docker image:

   ```bash
   docker tag todoapp:1.0.0 chickrizova/todolist
   ```

3. Push the image to Docker Hub:

   ```bash
   docker push chickrizova/todolist
   ```


---

## Running the Docker Container

To run the application inside a container:

1. Execute the following command:

   ```bash
   docker run -d -p 8080:8080 todoapp:1.0.0
   ```

    - The application will be available on port `8080` of your localhost.

2. If you pushed the image to Docker Hub:

   ```bash
   docker run -d -p 8080:8080 chickrizova/todolist
   ```

---

## Accessing the Application

1. Open your web browser.
2. Visit the following URL for the Django ToDo application:
    - Landing page: [http://localhost:8080/](http://localhost:8080/)
    - API endpoint: [http://localhost:8080/api/](http://localhost:8080/api/)

---

## Troubleshooting

- Ensure that port `8080` is not being used by another application.
- Check the Docker logs to verify that the server started correctly:

  ```bash
  docker logs <container_id>
  ```

---

## Notes on the Application

- The `Dockerfile` uses a two-stage build process:
    - **Build Stage:** Installs dependencies and prepares the application.
    - **Run Stage:** Optimizes the final image for production.

- The Python environment is configured with the `PYTHONUNBUFFERED=1` environment variable to improve logging performance in Docker.

- The `runserver` starts the Django application on `0.0.0.0:8080` to ensure it is accessible inside a Docker container.

---

## Useful Links

- Docker Hub Repository: [https://hub.docker.com/r/chickrizova/todolist](https://hub.docker.com/r/chickrizova/todolist)
- Django ToDo App Documentation: Refer to the [README.md](./README.md).

---
