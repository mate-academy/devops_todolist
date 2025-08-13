# ToDo App — Docker Image Instructions

## 🐳 Docker Hub Repository
https://hub.docker.com/repository/docker/demon9709/todoapp/tags/1.0.0/sha256-922dfaf34d3ed16703e48ca58768d2e61d1d7b751307fda89d29cd9ca0aa3c6c

## 1️⃣ Build the image locally
If you want to build the image from source:

docker build -t todoapp:1.0.0 .

You can change the Python version (default is 3.8):
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .


## 2️⃣ Run the container
docker run -p 8080:8080 demon9709/todoapp:1.0.0

`-p 8080:8080` maps container port 8080 to your local port 8080.

## 3️⃣ Accessing the application
After the container starts, open your browser and go to:

http://localhost:8080

## 4️⃣ Build and push to Docker Hub (for developers)
1. Build the image:
docker build -t todoapp:1.0.0 .

2. Tag for Docker Hub:
docker tag todoapp:1.0.0 demon9709/todoapp:1.0.0

3. Log in to Docker Hub:
docker login

4. Push to the repository:
docker push demon9709/todoapp:1.0.0

## ℹ️ Additional information
- The Django server runs on `0.0.0.0:8080`.
- Environment variable `PYTHONUNBUFFERED=1` ensures immediate log output to the console.
- Database migration is executed inside the image at build time via `RUN python manage.py migrate`.

## ✅ Requirements
- Docker installed on my system.
- Port `8080` available.
- Stable internet connection for pulling/pushing images.