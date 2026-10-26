# ToDo app in Docker

## Docker Hub

Image: [azartiksman/todoapp](https://hub.docker.com/r/azartiksman/todoapp) (tag `1.0.0`)

## Build

From the repository root:

```
docker build -t todoapp:1.0.0 .
```

Python version can be changed with a build argument:

```
docker build --build-arg PYTHON_VERSION=3.9 -t todoapp:1.0.0 .
```

## Run

From the local build:

```
docker run -d -p 8080:8080 --name todoapp todoapp:1.0.0
```

Or from Docker Hub:

```
docker run -d -p 8080:8080 --name todoapp azartiksman/todoapp:1.0.0
```

## Access

Open in browser:

- App: http://localhost:8080
- API: http://localhost:8080/api/

## Stop

```
docker stop todoapp && docker rm todoapp
```
