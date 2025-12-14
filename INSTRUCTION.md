# Django Todo App Container Instructions

## Docker Hub Repository
*Image Repository URL:* https://hub.docker.com/repository/docker/booobryyyyk/todoapp/general

## Building container

```sh
docker build . -t todoapp:1.0.0
```

## Running container
```sh
docker run -p 8080:8080 todoapp:1.0.0
```

## Accessing the application via a browser

As soon as container is running, open the webrowser and copy one of the following URLs:
- *API Docs URL:* http://localhost:8080/api/
- *Landing page URL:* http://localhost:8080/
