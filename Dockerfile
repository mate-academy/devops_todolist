ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

ADD https://github.com/Shum430/devops_todolist.git .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1


RUN apt-get update && apt-get install -y gcc python3-dev

COPY --from=base /app .

RUN ls -la /app


RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]

