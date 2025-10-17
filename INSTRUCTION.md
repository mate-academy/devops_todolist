Docker Hub Image

Image has been pushed to Docker Hub and is publicly available:

0nira0/todoapp:1.0.0


Direct link to the tag:
https://hub.docker.com/r/0nira0/todoapp/tags

A local alias can also be used:

todoapp:1.0.0


Example of creating the local tag from the pushed image:

docker tag 0nira0/todoapp:1.0.0 todoapp:1.0.0

Build Instructions

Python 3.8 or higher is required (Django 4+).

Example build using a specific Python version:

docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 -t 0nira0/todoapp:1.0.0 .

Publish to Docker Hub
docker login
docker push 0nira0/todoapp:1.0.0


(If the image was only built as todoapp:1.0.0, tag it first before pushing.)

Run Instructions

Standard run:

docker run -p 8080:8080 0nira0/todoapp:1.0.0


Detached mode with automatic cleanup:

docker run -d --rm -p 8080:8080 0nira0/todoapp:1.0.0


The container executes:

python manage.py runserver 0.0.0.0:8080

Accessing the Application

Open your browser at:

http://localhost:8080
