ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base


WORKDIR /devops_todolist_docker


COPY requirements.txt requirements.txt

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /devops_todolist_docker

COPY --from=base /devops_todolist_docker .

ENV PYTHONUNBUFFERED=1

RUN pip install --no-cache-dir -r requirements.txt 
  

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8080"]