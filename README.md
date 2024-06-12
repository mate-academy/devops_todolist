https://hub.docker.com/repository/docker/ladmael/todoapp/general

ARG PYTHON_VERSION=3.8-slim

FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1

WORKDIR /todo_list_app

COPY . .
RUN pip install -r ./requirements.txt
RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]

http://localhost:8080/


Instructions:

docker build -t todoapp:1.0.0 .
docker tag todoapp:1.0.0 ladmael/todoapp:1.0.0
docker create -p 8080:8080 --name todoapp ladmael/todoapp:1.0.0
docker start todoapp