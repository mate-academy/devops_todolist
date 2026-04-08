# ToDo App – Docker Instructions

## Docker Hub Repository

The pre-built image is available at:

👉 **https://app.docker.com/accounts/dkedo**

```
your-dockerhub-username/todoapp:1.0.0
```

> **Note:** Replace `your-dockerhub-username` with your actual Docker Hub username before pushing.

---

## Prerequisites

| Tool | Minimum version |
|------|----------------|
| Docker | 20.10+ |
| Git | any recent |

---

## 1 · Clone the repository

```bash
git clone https://github.com/<your-github-dkedo>/todoapp.git
cd todoapp
```

---

## 2 · Build the Docker image

```bash
docker build -t todoapp:1.0.0 .
```

To pin a specific Python version (default is `3.11`):

```bash
docker build --build-arg PYTHON_VERSION=3.11 -t todoapp:1.0.0 .
```

Verify the image was created:

```bash
docker images todoapp
```

---

## 3 · Run the container

```bash
docker run -d \
  --name todoapp \
  -p 8080:8080 \
  todoapp:1.0.0
```

| Flag | Purpose |
|------|---------|
| `-d` | Run in detached (background) mode |
| `--name todoapp` | Assign a human-friendly name to the container |
| `-p 8080:8080` | Map host port **8080** → container port **8080** |

---

## 4 · Access the application in a browser

| Page | URL |
|------|-----|
| Landing page | http://localhost:8080 |
| Browsable API | http://localhost:8080/api/ |
| Admin panel | http://localhost:8080/admin/ |

---

## 5 · View application logs

```bash
docker logs -f todoapp
```

---

## 6 · Stop and remove the container

```bash
docker stop todoapp
docker rm todoapp
```

---

## 7 · Push image to Docker Hub (maintainers only)

```bash
# Log in
docker login

# Tag with your Docker Hub username
docker tag todoapp:1.0.0 your-dockerhub-dkedo/todoapp:1.0.0

# Push
docker push your-dockerhub-username/todoapp:1.0.0
```

---

## 8 · Pull and run the published image

If you just want to run the app without cloning the repo:

```bash
docker pull your-dockerhub-dkedo/todoapp:1.0.0

docker run -d \
  --name todoapp \
  -p 8080:8080 \
  your-dockerhub-username/todoapp:1.0.0
```

Then open **http://localhost:8080** in your browser.