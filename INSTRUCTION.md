Link to my personal Docker Hub repository win an app image:
https://hub.docker.com/repository/docker/nook17n1/todoapp/tags/1.0.0/sha256-e1ae24b5f1dd0effb9631055de04b8677dcc991802429512b18f97d42aacffa3

Instructions for building and running the container.
1. docker build -t todoapp:1.0.0 . 
2. docker run -d -p 8080:8080 --name app todoapp:1.0.0

And then start the server in your browser (default is http://localhost:8080).