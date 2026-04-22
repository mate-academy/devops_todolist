# Todo App - Setup and Execution Guide

This repository contains a containerized Django Todo application. Follow the steps below to set up and run the application.

## 1. Prerequisites

Before you begin, ensure you have Docker installed on your machine:

**Link:** https://www.docker.com/products/docker-desktop/

Verify your installation by running:

```bash
docker --version
```

## 2. Docker Hub Repository

The pre-built image is hosted on Docker Hub:

**Link:** https://hub.docker.com/repository/docker/jijuzo/todoapp

## 3. Building and Running the Container
 
There are two ways to get your Todo application up and running:
 
- **Option A (Pull and Run):** Use the pre-built image from Docker Hub if you don't need to make any changes to the source code.
- **Option B (Build and Run):** Clone the repository and build the image locally from the Dockerfile if you want to customize the application or work with the source code.

Select the option that best fits your workflow.
 
## 4. Option A: Pull and Run 
 
### Pull the image:
 
```bash
docker pull jijuzo/todoapp:1.0.0
```
 
### Run the container:
 
```bash
docker run -d -p 8080:8080 --name <your-container-name> jijuzo/todoapp:1.0.0
```
 
## 5. Option B: Build and Run
 
### Clone the repository:
 
```bash
git clone https://github.com/Jijuzo/devops_todolist.git
cd devops_todolist
git checkout dev
```
 
### Build the image:
 
```bash
docker build -t todoapp:1.0.0 .
```
 
### Run the container:
 
```bash
docker run -d -p 8080:8080 --name <your-container-name> todoapp:1.0.0
```
 
## 6. Accessing the Application
 
Once the container is running, the application will be available at:
 
**URL:** http://localhost:8080