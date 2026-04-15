ToDo Application - Docker Instructions
This project is a Django-based ToDo application containerized using a multi-stage Dockerfile.

1. Docker Hub Repository
The official image for this application is published at:
Link: https://hub.docker.com/r/Clem97121/todoapp
Full Image Path: clem97121/todoapp:1.0.0

2. How to Build and Tag the Image
To build the image and apply the required tag for your personal repository, run the following command from the project root:

Bash
docker build -t clem97121/todoapp:1.0.0 .
Note: Database migrations (python manage.py migrate) are executed as a RUN instruction during the build stage. This assumes the project uses a local SQLite database.

3. How to Push the Image to Docker Hub
To publish the image to your personal Docker Hub account, execute these commands:

Login to your account:

Bash
docker login
Push the specific tag:

Bash
docker push clem97121/todoapp:1.0.0
4. How to Run the Container
To start the application locally after pulling or building the image, use:

Bash
docker run -d -p 8080:8080 --name todoapp clem97121/todoapp:1.0.0
5. How to Access the Application
Once the container is running, the application is accessible via browser at:

Main Landing Page: http://localhost:8080/

API Documentation: http://localhost:8080/api/

6. Technical Specifications
Multi-stage build: Implemented to optimize the final image size.

Python Version: Controlled via ARG PYTHON_VERSION.

Log Optimization: ENV PYTHONUNBUFFERED=1 is used to ensure real-time logging to stdout/stderr.

Network: The Django server is configured to run on 0.0.0.0:8080.