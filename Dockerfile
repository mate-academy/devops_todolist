# Use the official Python image as the base image
FROM python:3.8

# Set the working directory within the container
WORKDIR /app

# Copy the application code into the container
COPY app.py .
COPY docker-logo.png .

# Install Flask and other dependencies
RUN pip install Flask

# Expose port 8080 to the host
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["python", "app.py"]
