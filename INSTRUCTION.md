# ToDo App – Docker Instructions

## Docker Hub image

The application image is available on Docker Hub:

https://hub.docker.com/r/zoryana/todoapp

Image name and tag:

```bash
zoryana/todoapp:1.0.0

docker build --build-arg PYTHON_VERSION=3.11 -t todoapp:1.0.0 .
docker tag todoapp:1.0.0 zoryana/todoapp:1.0.0
docker push zoryana/todoapp:1.0.0

docker run --rm -p 8080:8080 zoryana/todoapp:1.0.0

#Access the application via browser
http://localhost:8080/

