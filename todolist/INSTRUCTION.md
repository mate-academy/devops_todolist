My_Docker_Hub_URL = https://hub.docker.com/repository/docker/vladisloveust/todoapp/general

Dockerfile: [
ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1

WORKDIR /devops_todolist

COPY . .

RUN pip install -r requirements.txt

CMD sh -c "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"

EXPOSE 8080
]

running settings:
docker run -d --name todoapp -p 0.0.0.0:8080:8080 todoapp:1.0.0

via a browser:  http://localhost:8080