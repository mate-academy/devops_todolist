# ToDo App Docker Instructions

## Docker Hub Repository
The Docker image for this ToDo application is available at: `snosachenko/todoapp:1.0.0`

## Building the Docker Image

To build the Docker image locally, run the following command from the project root directory:

```bash
docker build -t todoapp:1.0.0 .
```

### Build with Custom Python Version
You can specify a different Python version using the build argument:

```bash
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
```

## Running the Container

### Run the container locally:
```bash
docker run -p 8080:8080 todoapp:1.0.0
```

### Run the container in detached mode:
```bash
docker run -d -p 8080:8080 --name todoapp-container todoapp:1.0.0
```

### Run with environment variables (optional):
```bash
docker run -p 8080:8080 -e DEBUG=False todoapp:1.0.0
```

## Accessing the Application

Once the container is running, you can access the ToDo application through your web browser:

- **URL**: `http://localhost:8080`
- **Admin Panel**: `http://localhost:8080/admin` (if admin user is created)
- **API Endpoints**: `http://localhost:8080/api/` (REST API endpoints)

## Pushing to Docker Hub

1. **Login to Docker Hub:**
   ```bash
   docker login
   ```

2. **Tag the image for your Docker Hub repository:**
   ```bash
   docker tag todoapp:1.0.0 snosachenko/todoapp:1.0.0
   ```

3. **Push the image:**
   ```bash
   docker push snosachenko/todoapp:1.0.0
   ```

## Container Management

### Stop the container:
```bash
docker stop todoapp-container
```

### Remove the container:
```bash
docker rm todoapp-container
```

### View container logs:
```bash
docker logs todoapp-container
```

### Execute commands inside the running container:
```bash
docker exec -it todoapp-container /bin/bash
```

## Dockerfile Features

- **Multi-stage build**: Separates build dependencies from runtime dependencies
- **Python version argument**: Configurable Python base image version
- **Environment optimization**: `PYTHONUNBUFFERED=1` for proper logging
- **Database migration**: Automatically runs Django migrations during build
- **Security**: Runs as non-root user
- **Port configuration**: Configured to run on `0.0.0.0:8080`

## Troubleshooting

### Container won't start:
- Check if port 8080 is already in use: `lsof -i :8080`
- View container logs: `docker logs todoapp-container`

### Permission issues:
- The container runs as a non-root user for security
- Ensure proper file permissions if mounting volumes

### Database issues:
- The app uses SQLite by default
- Database migrations are run automatically during build
- For persistent data, consider mounting a volume for the database file

## Development

For development purposes, you can mount the source code as a volume:

```bash
docker run -p 8080:8080 -v $(pwd):/app todoapp:1.0.0
```

This allows you to make changes to the code without rebuilding the image.
