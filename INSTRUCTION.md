# Django ToDo List Applikation	


## Docker Hub Repository
- Repository Link: [https://hub.docker.com/r/zor1kk88/todoapp](https://hub.docker.com/r/zor1kk88/todoapp)
- Image: 'zor1kk88/todoapp:1.0.0'

---


## 1.How to Build the Docker Image
To build the Docker image locally, run the following command in the root directory of the project:
```bash
docker build --build-arg PYTHON_VERSION=3.11 -t zor1kk88/todoapp:1.0.0


## 2. How to Run the Container
```bash
docker run -p 8080:8080 zor1kk88/todoapp:1.0.0