# Build stage
ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-slim AS base

WORKDIR /app

# Copy the application code into the container
COPY . ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Runtime stage
FROM base as run

WORKDIR /app

# Set environment variable to optimize Python app for Docker
ENV PYTHONUNBUFFERED=1

# Run migrations
RUN python manage.py migrate

# Expose port 8080 to the host
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
