# ToDo app in Docker

## Docker Hub

Image repository: https://hub.docker.com/r/lehotskyimykhailo/todoapp

## Pull and run the published image

```bash
docker pull lehotskyimykhailo/todoapp:1.0.0
docker run -d --name todoapp -p 8080:8080 lehotskyimykhailo/todoapp:1.0.0
```

## Build the image yourself

From the repository root (where the `Dockerfile` is):

```bash
docker build -t todoapp .
```

The Python version of the base image can be changed with a build argument (default is `3.10`):

```bash
docker build --build-arg PYTHON_VERSION=3.11 -t todoapp .
```

Database migrations are applied during the build, so the image already contains a ready SQLite database.

## Run the container

```bash
docker run -d --name todoapp -p 8080:8080 todoapp
```

- `-d` runs the container in the background
- `-p 8080:8080` maps port 8080 of your machine to port 8080 of the container, where Django listens (`runserver 0.0.0.0:8080`)

Check the logs:

```bash
docker logs -f todoapp
```

Stop and remove the container:

```bash
docker stop todoapp
docker rm todoapp
```

## Push the image to Docker Hub

```bash
docker login
docker tag todoapp lehotskyimykhailo/todoapp:1.0.0
docker push lehotskyimykhailo/todoapp:1.0.0
```

## Access the application in a browser

After the container is running, open:

- Landing page: http://localhost:8080/
- API: http://localhost:8080/api/

Use `localhost` (or `127.0.0.1`), not another host name: the app runs with `DEBUG = True` and an empty `ALLOWED_HOSTS`, so Django only accepts these hosts.
