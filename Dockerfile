# Use Python base image with ARG version
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set working directory in the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Execute database migration
RUN python manage.py migrate

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
