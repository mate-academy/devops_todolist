# Build Stage
ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

# Copy all project files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Run Stage
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

# Copy project files from the build stage
COPY --from=builder /app /app

# Set environment variable to disable Python output buffering (logs directly to stdout/stderr)
ENV PYTHONUNBUFFERED=1

# Install dependencies required for database migrations
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Execute database migrations
RUN python manage.py migrate

# Start the Django server on 0.0.0.0:8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]