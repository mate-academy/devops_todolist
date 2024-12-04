ARG PV=3.10

FROM python:${PV} AS base

WORKDIR /my_docker_app

COPY . .

FROM python:${PV}-slim AS run

WORKDIR /my_docker_app

ENV PYTHONUNBUFFERED=1  

COPY --from=base /my_docker_app .

RUN pip install --upgrade pip && pip install -r requirements.txt &&\
    python manage.py migrate

EXPOSE 8080

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8080"]