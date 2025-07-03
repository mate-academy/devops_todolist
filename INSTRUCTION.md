# Link to dockerhub
https://hub.docker.com/r/yourdockerhubusername/todoapp

# Building command
```
docker build -t todoapp .
```
# Running command
```
docker run -p 8080:8080 todoapp
```

# Browser link
To open container in browser you should build an image first, after that you should run a container, 
then you can access web page by that link:

http://localhost:8080
