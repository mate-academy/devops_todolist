# ToDo App — Docker Instructions

## Docker Hub

Image repository: [artemzakharchukhome/todoapp](https://hub.docker.com/r/artemzakharchukhome/todoapp)

Tag: `1.0.0` — [artemzakharchukhome/todoapp:1.0.0](https://hub.docker.com/r/artemzakharchukhome/todoapp/tags?name=1.0.0)

## Build the image

From the project root directory:

```bash
docker build . -t todoapp:1.0.0
```

## Run the container

### Run a locally built image

```bash
docker run -p 8080:8080 -d todoapp:1.0.0
```

## Access the application in a browser

After the container is running, open:

- Landing page: [http://localhost:8080/](http://localhost:8080/)
- API: [http://localhost:8080/api/](http://localhost:8080/api/)
