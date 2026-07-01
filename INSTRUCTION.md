1. Link to my personal Docker Hub repository win an app image.

https://hub.docker.com/r/hrechukhao/todoapp/tags

2. Building and running the container

Build:

docker build -t todoapp:1.0.0 .

Run

docker run -d -p 8080:8080 --name todolistapp todoapp:1.0.0

3. Accessing the application via a browser

http://localhost:8080/
