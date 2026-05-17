Docker Hub image
---------------

This repository has a prebuilt Docker image available on Docker Hub:

https://hub.docker.com/r/verteiger/todoapp

Quick start — pull and run
--------------------------

1. Pull the image from Docker Hub:

   docker pull verteiger/todoapp:1.0.0

2. Run the container, mapping the container port 8080 to a host port (example uses host port 8000):

   docker run --rm -p 8000:8080 todoapp:1.0.0

Build the image locally
-----------------------

If you prefer to build the image from source locally:

1. Build the image (run from the repository root):

   docker build -t todoapp:1.0.0 .

2. Run the locally-built image:

   docker run --rm -p 8000:8080 todoapp:1.0.0
------------------

To publish your local build to Docker Hub (you must own the `verteiger/todoapp` repo or change the tag to your own):

1. Log in to Docker Hub:

	docker login

2. Tag the image (if needed):

   docker tag todoapp:1.0.0 verteiger/todoapp:1.0.0

3. Push:

   docker push verteiger/todoapp:1.0.0

Notes about the container
-------------------------

- The container runs the Django development server on port `8080` inside the container (see `Dockerfile`).
- We recommend mapping it to a non-conflicting host port, e.g. `8000` as shown above.
- The container runs migrations at start (`python manage.py migrate`) so the first run may take longer.

Access the application in a browser
----------------------------------

After running the container with `-p 8000:8080`, open your browser and go to:

http://localhost:8000/

If you mapped to a different host port, replace `8000` with that port.

Optional: Docker Compose
------------------------

Create a `docker-compose.yml` file with a service like:

```yaml
version: '3.8'
services:
  todoapp:
    image: todoapp:1.0.0

Then run:

```bash
docker-compose up -d
```


Troubleshooting
---------------

- If the site is unreachable, check Docker logs:

  docker logs <container-id>

- Ensure no other service is already listening on the chosen host port.
