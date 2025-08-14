# ToDo App Docker Instructions

## Docker Hub Image
[https://hub.docker.com/r/Baranotik/todoapp](https://hub.docker.com/r/baranotik/todoapp)

## Build and Run Instructions

### 1. Clone the repository

```bash
git clone <YOUR_REPOSITORY_URL>
cd <REPO_FOLDER>
```

### 2. Build the Docker image
```bash
docker build -t <YOUR_DOCKERHUB_USERNAME>/todoapp:1.0.0 .
```
### 3. Run the Docker container
```bash
docker run -p 8080:8080 <YOUR_DOCKERHUB_USERNAME>/todoapp:1.0.0
```
### 4. Access the application
Open your browser and go to: http://localhost:8080

### 5. Push to Docker Hub (if not already pushed)
```bash
docker login
docker push <YOUR_DOCKERHUB_USERNAME>/todoapp:1.0.0
```

