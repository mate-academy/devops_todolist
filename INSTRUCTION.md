# TodoApp Docker Image

Docker Hub: https://hub.docker.com/r/vovakomar/todoapp

## Build image

# Build the image locally and tag it for Docker Hub
docker build --build-arg PYTHON_VERSION=3.10 -t vovakomar/todoapp:1.0.0 .

# Log in to Docker Hub
docker login

# Push the image to your Docker Hub repository
docker push vovakomar/todoapp:1.0.0

## Run container

# Run locally using the repository-qualified image
docker run -p 8080:8080 vovakomar/todoapp:1.0.0

# (Optional) Run using local image tag
docker run -p 8080:8080 todoapp:1.0.0

## Access in a browser
http://localhost:8080
> The Django server runs inside the container on 0.0.0.0:8080, which is mapped to host port 8080.

## Migrations

# Migrations are executed during the image build via:
# RUN python manage.py migrate
# If you use an external database, migrations may need to be run manually after container start:
docker exec -it <container_id> python manage.py migrate
