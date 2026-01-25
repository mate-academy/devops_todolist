# 📝 ToDo App (Dockerized)

This repository contains a Dockerized Django **ToDo application**.  
The application is fully containerized using a **multi-stage Docker build** and can be run locally or pulled from Docker Hub.

### 📦 Docker Hub Image
🔗Docker Hub repository:
```bash
https://hub.docker.com/r/aleksandra2402/todoapp
```

Image tag: `todoapp:1.0.0`

### 🏗 Build the Docker Image Locally

You can build the image using the provided `Dockerfile`:

```bash
docker build \
  --build-arg PYTHON_VERSION=3.12 \
  -t todoapp:1.0.0 .
```

### 🐍 Python Version

The Docker image uses **Python 3.12** by default, which satisfies the task requirement of Python ≥ 3.8.

The Python version can be overridden using the `PYTHON_VERSION` build argument if needed.


### ▶️ Run the Container
```bash
docker run -p 8080:8080 todoapp:1.0.0
```

The container will start the Django development server on port 8080.

### 📥 Pull the Image from Docker Hub

Instead of building locally, you can pull the prebuilt image:
```bash
docker pull aleksandra2402/todoapp:1.0.0
docker run -p 8080:8080 aleksandra2402/todoapp:1.0.0
```

### 🗄 Database Migrations

Database migrations are executed during the image build stage using:

```dockerfile
RUN python manage.py migrate
```
**Note:**  
Running migrations at build time assumes that the database is available during the image build process.  
For this project, the default SQLite database allows migrations to be executed safely at build time.  
In a production setup with an external database, migrations would typically be executed at container startup.

### 🌐 Access the Application
Open your browser and navigate to:
👉 http://localhost:8080
You should see the ToDo application running.

### 🧾 Summary
* Image name: todoapp
* Image tag: 1.0.0
* Port exposed: 8080
* Framework: Django
* Containerized using Docker (multi-stage build)