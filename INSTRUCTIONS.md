# ToDo app in Docker

## Docker Hub
```
https://hub.docker.com/r/chumba1100/todoapp
```

## Build the image locally
```
docker build -t todoapp .
```

## Run the container
```
docker run --rm -p 8080:8080 todoapp
```

## Or pull the published image
```
docker pull chumba1100/todoapp:1.0.0
docker run --rm -p 8080:8080 chumba1100/todoapp:1.0.0
```

## Open the app in a browser
- Landing page: http://localhost:8080/
- API: http://localhost:8080/api/