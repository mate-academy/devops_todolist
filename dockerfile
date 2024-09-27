ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION} AS build

WORKDIR /todoapp

ADD https://github.com/yaroslav-demchenko/devops_todolist.git ./

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /todoapp

ENV PYTHONUNBUFFERED=1

COPY --from=build /todoapp .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
