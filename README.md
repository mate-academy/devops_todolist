### Link to my personal Docker Hub repository with an app image
https://hub.docker.com/r/urapikh/todoapp


### Instructions for building and running the container.
```
docker build -f Dockerfile . -t todoapp:1.0.0
docker run -p 8080:8080 todoapp:1.0.0
```

### Instructions on accessing the application via a browser
Open/type it in your browser 
http://127.0.0.1:8080/