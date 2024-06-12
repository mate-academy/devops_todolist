# Use the specified Python base image version as an argument
ARG PYTHON_VERSION=3.9.7
FROM python:${PYTHON_VERSION}-slim AS builder

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Perform database migration
RUN python manage.py migrate

# Production stage
FROM python:${PYTHON_VERSION}-slim

# Set working directory
WORKDIR /app

# Copy installed dependencies from the builder stage
COPY --from=builder /usr/local/lib/python${PYTHON_VERSION}/site-packages/ /usr/local/lib/python${PYTHON_VERSION}/site-packages/

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Expose port
EXPOSE 8080

# Run the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

# Additional steps like collectstatic for Django may be needed for production
