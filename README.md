# Repository in docker hub
[https://hub.docker.com/r/artemmusii/todoapp](https://hub.docker.com/r/artemmusii/todoapp)

# Build image
```
docker build . -t todoapp:1.0.0
```

# Run container
```
docker run -p 8080:8080 todoapp:1.0.0
```

# Access in the browser
To access application in the browser, open: [http://localhost:8080](http://localhost:8080)