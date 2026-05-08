Link to my personal Docker Hub repository win an app image:
https://hub.docker.com/repository/docker/nook17n1/todoapp/tags/1.0.0/sha256-9d2dd6fd3a7f772e7e992e13936174c62d55d10b11d8bb66b70b9044539081a6

Instructions for building and running the container.
1. docker build -t todoapp:1.0.0 . 
2. docker run -d -p 8080:8080 --name app todoapp:1.0.0

And then start the server in your browser (default is http://localhost:8080).