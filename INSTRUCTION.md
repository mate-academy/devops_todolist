## Docker Hub Repository
Image is at: https://hub.docker.com/r/vovalogic/todoapp

## Build the Image
docker build -t todoapp:1.0.0 .

## Run the Image
docker run -p 8080:8080 todoapp:1.0.0

## Open
http://localhost:8080