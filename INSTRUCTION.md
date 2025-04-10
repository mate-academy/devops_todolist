# 📝 ToDo Django App – Docker Instructions

## 📦 Docker Hub Image

The image is available at:  
👉 [https://hub.docker.com/r/rootdebian/todoapp](https://hub.docker.com/r/rootdebian/todoapp)

Tag: `latest`

---

## 🛠 Build the image manually (if needed)

If you want to build the image from source:

```bash
docker build -t todoapp:1.0.0 .
```
## ▶️ How to Run the Container

Run the following command in your terminal:

```bash
docker run -p 8080:8080 rootdebian/todoapp:latest
```
