# ToDo App – Docker Instructions

## Docker Hub image

The application image is available on **Docker Hub**:

https://hub.docker.com/r/zoryana/todoapp

---

## 🏗️ Building and Tagging the Container Image

To build the image locally with a specific Python version (e.g., 3.11):

```bash
docker build --build-arg PYTHON_VERSION=3.11 -t todoapp:1.0.0 .

docker tag todoapp:1.0.0 zoryana/todoapp:1.0.0

docker push zoryana/todoapp:1.0.0

docker run --rm -p 8080:8080 zoryana/todoapp:1.0.0

##Accessing the Application
http://localhost:8080/
