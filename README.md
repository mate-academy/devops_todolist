## INSTRUCTIONS

## Pull the docker image

```
docker pull bodyarespect/devops_todolist
```

## Run docker image

```
docker run -p 8080:8080 bodyarespect/devops_todolist
```

## For building image by yourself

```
docker build -f Dockerfile -t todoapp:1.0.0 .
```

## And run
```
docker run -p 8080:8080 todoapp:1.0.0
```