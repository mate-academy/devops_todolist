# ToDo App — Docker Instructions

## Docker Hub Repository

Image is available at:
**https://hub.docker.com/r/vadymmoldovan/todoapp**

---

## 1. Build the Docker Image

Clone the repository and build the image:

```bash
git clone https://github.com/VadymMoldovan/devops_todolist.git
cd devops_todolist

docker build -t todoapp:1.0.0 .
```

To build with a custom Python version (optional):

```bash
docker build --build-arg PYTHON_VERSION=3.11 -t todoapp:1.0.0 .
```

---

## 2. Run the Container

```bash
docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
```

| Flag | Description |
|------|-------------|
| `-d` | Run in detached (background) mode |
| `-p 8080:8080` | Map port 8080 of the container to port 8080 on your machine |
| `--name todoapp` | Name the running container |

---

## 3. Access the Application in a Browser

Open your browser and navigate to:

```
http://localhost:8080
```

---

## 4. Pull the Image from Docker Hub (alternative)

Instead of building locally, you can pull the pre-built image:

```bash
docker pull vadymmoldovan/todoapp:1.0.0
docker run -d -p 8080:8080 --name todoapp vadymmoldovan/todoapp:1.0.0
```

---

## 5. Push Image to Docker Hub (for maintainers)

```bash
docker tag todoapp:1.0.0 vadymmoldovan/todoapp:1.0.0
docker push vadymmoldovan/todoapp:1.0.0
```

---

## 6. Stop and Remove the Container

```bash
docker stop todoapp
docker rm todoapp
```
