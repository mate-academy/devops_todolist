[Docker Image](https://hub.docker.com/r/somewellich/todoapp)

## Instructions for building and running the container
```
docker build -t somewellich/todoapp:1.0.0 .
```

```
docker run -d -p 8080:8080 somewellich/todoapp:1.0.0
```

## Instructions on accessing the application via a browser

```
http://localhost:8080/
```

OR
```
http://127.0.0.1:8080/
```