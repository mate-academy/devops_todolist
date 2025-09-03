## 🛠️ Build Docker Image

```bash
docker build --build-arg PYTHON_VERSION=3.13 -t chornoknysh/todoapp:1.0.0 .
```

## 🚀 Run the Container

```bash
docker run -d -p 8080:8080 --name todoapp chornoknysh/todoapp:1.0.0
```

## 🌐 Access the App

Open your browser and go to:  
**http://localhost:8080**

## 📤 Push to Docker Hub

```bash
docker push chornoknysh/todoapp:1.0.0
```