## INSTRUCTIONS

## Pull the docker image

```
docker pull guver2004/todoapp:1.0.0
```

## Run docker image

```
docker run -p 8080:8080 guver2004/todoapp:1.0.0
```

## Or you can build image yourself

```
docker build -f Dockerfile -t todoapp:1.0.0 .  
```

## And run
```
docker run -p 8080:8080 todoapp:1.0.0
```
