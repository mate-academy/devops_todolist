# Link to repository

[https://hub.docker.com/r/maksimens/todoapp]

# Instruction

## Build image
```
docker build -t todoapp:1.0.0 .
```

# Download the image

```
docker push maksimens/todoapp1  
```

## Run container

````
docker run -d -p 8080:8080 maksimens/todoapp1:latest 
````

# Open in browser


Open the program in a browser at this address [http://localhost:8080/](http://localhost:8080/)
