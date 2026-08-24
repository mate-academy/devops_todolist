# ToDo Django Docker Image

This document describes how to download and run the **ToDo Django** application using Docker.

## Prerequisites

Before running the application, make sure that Docker is installed on your machine.

Installation instructions for your operating system are available in the official Docker documentation:

https://docs.docker.com/engine/install/

INSTRUCTION.md

## Docker Hub Repository

The application image is available on Docker Hub:

https://hub.docker.com/repository/docker/yuriimelnyksys/todoapp/general

## Download the Image

Pull the image from Docker Hub:

```bash
docker pull yuriimelnyksys/todoapp:1.0.0
```

## Run the Container

Start the application with:

```bash
docker run -p 8080:8080 yuriimelnyksys/todoapp:1.0.0
```

The application uses port **8080**.

## Access the Application

After the container has started, open your browser and navigate to:

http://localhost:8080/

## Database Initialization

During the image build process, Django database migrations are executed automatically. As a result, the required SQLite database schema is created before the application starts.