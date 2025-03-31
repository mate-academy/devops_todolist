Go to https://hub.docker.com/repository/docker/whatmodeprog/todoapp/tags/1.0.0/sha256-9eb3c1a49434cf965948f0fa6b73d5b45798e1bc0b93af5611a98b8560d83517
Build the image with docker build . -f Dockerfile -t todoapp:1.0.0
Start the container with docker run  -p 8080:8080 whatmodeprog/todoapp:1.0.0
Access the app in the browser by visiting http://localhost:8080