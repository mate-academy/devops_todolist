# ToDo App Instructions

## Docker Hub Repository
The Docker image for this application is available at:
[https://hub.docker.com/r/88victory88/todoapp](https://hub.docker.com/r/88victory88/todoapp)

## Building and Running the Application

### Build the Docker Image
```bash
docker build -t todoapp:1.0.0 .

Run the Docker Container
bash
Copy code
docker run -d -p 8080:8080 todoapp:1.0.0

Access the Application
Open your browser and go to: http://localhost:8080