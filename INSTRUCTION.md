# ToDo App Docker Instructions

## Build image
docker build -t todoapp:1.0.0 .

## Run container
docker run -p 8080:8080 todoapp:1.0.0

## Tag image
docker tag todoapp:1.0.0 vikkinech/todoapp:1.0.0

## Push to Docker Hub
docker push vikkinech/todoapp:1.0.0

## Docker Hub repository
https://hub.docker.com/r/vikkinech/todoapp

## Open in browser
After running the container, open http://localhost:8080 in your browser.



