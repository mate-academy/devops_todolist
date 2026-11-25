# Django ToDo list

Link to Docker Hub repository https://hub.docker.com/r/gregoryu85/todoapp

## Commands for run application

Build app:

```
docker build -t todoapp:1.0.0
```

Run app:

```
docker run -p 8080:8080 todoapp:1.0.0
```

Browse the API:

```
http://localhost:8000/api/
```

Start on the landing page

```
http://localhost:8000/
```
