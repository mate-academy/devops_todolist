# Docker Instructions for Django ToDo App

## Docker Hub Image

📦 Image: [https://hub.docker.com/r/<your_dockerhub_username>/todoapp/tags](https://hub.docker.com/r/<your_dockerhub_username>/todoapp/tags)  
🖼 Tag: `1.0.0`

---

## 🔨 Build the Image

```bash
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
