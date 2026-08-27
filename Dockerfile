# Build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

# Copy all project source code into the build stage
COPY . /app

# Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

# Optimize Python logs for Docker
ENV PYTHONUNBUFFERED=1

# Copy the project files from the build stage
COPY --from=base /app /app

# Install dependencies and execute database migrations
RUN pip install -r requirements.txt && \
    python manage.py migrate

# Expose port 8080 to the host
EXPOSE 8080

# Run server on 0.0.0.0:8080
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]