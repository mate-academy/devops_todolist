```
# Build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy the application code into the container
COPY . .

# Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

# Copy the entire /app directory from the build stage
COPY --from=base /app /app

# Install dependencies and run migrations
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

# Expose port 8080 to the host
EXPOSE 8080

# Define the command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
```

### Link to my personal Docker Hub repository with an app image
https://hub.docker.com/r/urapikh/todoapp


### Instructions for building and running the container.
```
docker build -f Dockerfile . -t todoapp:1.0.0
docker run -p 8080:8080 todoapp:1.0.0
```

### Instructions on accessing the application via a browser
Open/type it in your browser 
http://127.0.0.1:8080/