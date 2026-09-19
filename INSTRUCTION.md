[Docker Hub repo](https://hub.docker.com/repository/docker/cara7ies/todoapp/general)

## Step 1
---
Install docker on your computer

## Step 2
---
Pull docker images

## Step 3
---
Navigate to the project’s root directory and start the container using the following command: 
```bash
docker run -p 8000:8000 --name todolist todoapp:1.0.0 cara7ies/todoapp:1:0
```

> [!NOTE]
> Add the `-d` flag to run the container in detached mode.

### Access the Application

Once the container is running, open `http://127.0.0.1:8000` in your browser to access the application.
