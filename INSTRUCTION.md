# ToDo app

Docker image:
https://hub.docker.com/r/popik88/todoapp

## Pull and run

1. Pull the image:

   ```bash
   docker pull popik88/todoapp:1.0.0
   ```

2. Run the container (port 8080):

   ```bash
   docker run --rm -p 8080:8080 popik88/todoapp:1.0.0
   ```

## Build and run

1. Build:

   ```bash
   docker build -t todoapp .
   ```

   You can override Python base image version (for build):

   ```bash
   docker build --build-arg PYTHON_VERSION=3.11 -t todoapp .
   ```

2. Run:

   ```bash
   docker run --rm -p 8080:8080 todoapp
   ```

### Local URL:

http://localhost:8080/

