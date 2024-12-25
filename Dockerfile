# Build stage
FROM python:3.9-slim AS build

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Run stage
FROM python:3.9-slim AS run

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Copy dependencies from build stage
COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=build /app .

# Execute migrations
RUN python manage.py migrate

# Expose the port
EXPOSE 8080

# Command to run the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
