## 📦 Docker Hub Repository

The Docker image for the application is publicly available on Docker Hub:

🔗 **[https://hub.docker.com/r/gseniv/todoapp](https://hub.docker.com/r/gseniv/todoapp)**

You can pull it directly using:

```bash
docker pull gseniv/todoapp:1.0.0
```

---

## 🛠 Build and Run Locally

### ✅ Step 1: Build the Docker image

Make sure you're in the root project directory (where the Dockerfile is located), then run:

```bash
docker build . -t todoapp:1.0.0
```

### ✅ Step 2: Run the container

Use the following command to run the container:

```bash
docker run --name todoapp -p 8000:8000 --env PYTHONUNBUFFERED=1 --rm todoapp:1.0.0
```

## 🌐 Accessing the Application

Once the container is running, open your browser and visit:

👉 **[http://localhost:8000](http://localhost:8000)**

This will load the main page of your application.
