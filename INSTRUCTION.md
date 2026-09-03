# ToDo app in Docker

Django ToDo list packed into a multi-stage image.
Docker Hub: https://hub.docker.com/r/kkurama/todoapp (`kkurama/todoapp:1.0.0`)

## Build

```bash
git clone https://github.com/KuRaMaA4/devops_todolist.git
cd devops_todolist
docker build -t todoapp:1.0.0 .
```

The first stage builds wheels from `requirements.txt`, the second one installs them, so the final image has no compiler in it.

Python version can be changed at build time (default is 3.11-slim):

```bash
docker build --build-arg PYTHON_VERSION=3.12-slim -t todoapp:1.0.0 .
```

## Run

Pull the ready image:

```bash
docker pull kkurama/todoapp:1.0.0
docker run -d --name todoapp -p 8080:8080 kkurama/todoapp:1.0.0
```

Or run the one you built locally:

```bash
docker run -d --name todoapp -p 8080:8080 todoapp:1.0.0
```

If port 8080 is busy, change the host port only: `-p 8081:8080`. Inside the container the app always listens on 8080.

## Open in browser

* http://localhost:8080/ - todo lists
* http://localhost:8080/admin/ - django admin

There is no user in the image, so create one when you need admin:

```bash
docker exec -it todoapp python manage.py createsuperuser
```

Logs: `docker logs -f todoapp` (PYTHONUNBUFFERED=1, so output is not buffered).

## Push to Docker Hub

```bash
docker login -u kkurama
docker tag todoapp:1.0.0 kkurama/todoapp:1.0.0
docker push kkurama/todoapp:1.0.0
```

## Notes

Database is sqlite and it lives inside the container, migrations are applied during build. If you remove the container, the data is gone. For this task it is fine.
