1.https://hub.docker.com/repository/docker/orestprogrammer/todoapp/general

2. Step-by-step Instruction for Dockerfile
   Using a variable to create a base image:

First, we define a variable that specifies the Python version we will use to create the base image. This allows flexibility in changing the Python version if needed.

Setting an environment variable to optimize logging:

We add the environment variable PYTHONUNBUFFERED=1 to prevent output buffering in the container. This allows the program to write logs directly to standard output (stdout/stderr), which is useful for container monitoring.

Copying all files into the app directory:

We copy all the files from the local environment into the container's /app directory, which was created earlier.

Switching to the "slim" image:

Next, we use a minimal Python image (python:3.8-slim), which is smaller in size, positively affecting the final container's size.

Creating the app directory on the new image:

Since we're working with a new image, we create the /app directory again and copy all the files from the previous stage (from the base image).

Updating packages and installing dependencies:

We run the RUN command to upgrade packages and install the dependencies specified in the requirements.txt file.

Performing database migration:

We execute the RUN python manage.py migrate command to set up the database before the container starts. This ensures proper database initialization for the application.

Running the container on port 8080:

We conclude the Dockerfile with the CMD command, which indicates that the Django server should be run on port 8080 with the 0.0.0.0 parameter, allowing external access to the container.

3. Instruction for opening app in browser

First we need to build the image using the command docker build -t todoapp:1.0.0

Then we need to run docker using the command docker run -d -p 8080:8080 --name myapp-container todoapp:1.0.0
