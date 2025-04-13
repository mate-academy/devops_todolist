# ToDo App – Dockerized Django Application

## 📦 Docker Hub Image

👉 [todoapp:1.0.0 on Docker Hub](https://hub.docker.com/r/danyakube/todoapp)

## 🔧 How to Build and Run the App

1. **Clone the repository:**

   ```bash
   git clone https://github.com/YOUR_USERNAME/todoapp.git
   cd todoapp

   ```

2. **Build the Docker image:**

   docker build --build-arg PYTHON_VERSION=3.11-slim -t todoapp:1.0.0 .

3. **Run the container:**

   docker run -p 8080:8080 todoapp:1.0.0

4. **Accessing the App**

Once the container is running, open your browser and go to:
http://localhost:8080/

📌 Notes

- Make sure that requirements.txt includes Django.
- The application automatically runs python manage.py migrate during the image build.
- Logs are unbuffered for real-time output inside Docker.
