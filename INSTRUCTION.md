# ToDo App Dockerized

## Docker Hub

Image: https://hub.docker.com/r/cnlgstcorp/todoapp  
Tag: `1.0.0`

## How to Build


```bash
docker build -t cnlgstcorp/todoapp:1.0.0 .

## How To Run

To start the container and run the app:

```bash
docker run -p 8080:8080 cnlgstcorp/todoapp:1.0.0
