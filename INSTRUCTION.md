ToDo App - Docker 

Repo: https://hub.docker.com/repository/docker/spridoloba/todoapp/

Build, Tag, and Push Steps:
docker build --build-arg PYTHON_VERSION=3.10 -t todoapp:1.0.0 .
docker tag todoapp:1.0.0 spridoloba/todoapp:1.0.0
docker push spridoloba/todoapp:1.0.0

Pull Command:
docker pull spridoloba/todoapp:1.0.0

Run Command:
docker run -p 8080:8080 --name todoapp spridoloba/todoapp:1.0.0

Browser URL: http://localhost:8080/


The container starts Django with:
python manage.py runserver 0.0.0.0:8080

Database Backend:
SQLite is used by default for build-time migrations.
If using a different database, configure runtime environment variables instead of build-time values