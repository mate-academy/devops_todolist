# INSTRUCTION.md

## Docker Hub Repository
[Docker Hub: todoapp](https://hub.docker.com/repository/docker/mykhailoivchenko/todoapp)  
Image Tag: `1.0.0`

---

## Running the Container
1. Pull the Docker image:
   ```bash
   docker pull mykhailoivchenko/todoapp:1.0.0
   ```

2. Run the container:
   ```bash
   docker run -p 8080:8080 mykhailoivchenko/todoapp:1.0.0
   ```

---

## Accessing the Application
1. Open your browser.
2. Navigate to:
   ```
   http://localhost:8080
   ```
3. The application’s landing page or API will be displayed.
