# Link to repository

[https://hub.docker.com/r/zaavee/todoapp](https://hub.docker.com/r/zaavee/todoapp)

# Instruction

## Build image

```
docker build -t todoapp:1.0.0
```

## Download the image

```
docker pull zaavee/todoapp:1.0.0
```

## Run container

```
docker run -d -p 8080:8080 zaavee/todoapp:1.0.0
```

# Open in browser

Open the program in a browser at this address [http://0.0.0.0:8080/](http://0.0.0.0:8080/)