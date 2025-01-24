            * Dockerized Django ToDo Application *


* This document provides instructions for building, running, and accessing the Dockerized version of the Django ToDo application.

* The Docker image for this application is available on my personal Docker Hub account. You can find it here:
- docker pull zhlobinskakateryna/todoapp:1.0.0

* Prerequisites
Before proceeding, ensure you have the following installed on your system: Docker





* Building the Docker Image
   If you wish to build the Docker image locally, follow these steps:
    1) Clone the repository:
      - git clone <repository_url>
      - cd <repository_folder>
    2) Build the Docker image:
      - docker build -t zhlobinskakateryna/todoapp:1.0.0 .

* Running the Application
  1) Start the application in a Docker container:
    - docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
  2) The application will now be accessible at:
    - http://localhost:8080/

* Accessing the Application
  - Landing Page: Visit http://localhost:8080/ to use the ToDo app.
  - API Documentation: Visit http://localhost:8080/api/ to explore the API.





* Using the Prebuilt Image
  If you prefer to use the prebuilt image from Docker Hub, follow these steps:
    1) Pull the Docker image:
      - docker pull zhlobinskakateryna/todoapp:1.0.0
    2) Run the container:
      - docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0

* Access the application at:
  - http://localhost:8080/





* Notes
The application uses ENV PYTHONUNBUFFERED=1 to optimize logging for Docker.
Database migrations are executed during the image build process to ensure the schema is ready.





Good luck! 🚀