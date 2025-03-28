# Build stage
FROM python:3.8 AS builder

ENV PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Copy all app code into the container
COPY . /app/

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the database migrations
RUN python manage.py migrate

# Run stage
FROM python:3.8-slim

ENV PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Copy the installed dependencies from the build stage
COPY --from=builder /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin

# Copy the application code from the build stage
COPY --from=builder /app /app

# Expose port 8080 to the host
EXPOSE 8080

# Set the command to run the Django development server
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
