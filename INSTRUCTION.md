for local build: docker build -t todoapp:1.0.0 .

Link to app: https://hub.docker.com/r/adryga/todoapp/tags

Install steps:
docker pull adryga/todoapp:1.0.0
docker run -d -p 8080:8080 adryga/todoapp:1.0.0

Open app in browser: http://localhost:8080