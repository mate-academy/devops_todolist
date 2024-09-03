ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY ./accounts ./accounts
COPY ./api ./api
COPY ./lists ./lists
COPY ./static ./static
COPY ./todolist ./todolist
COPY requirements.txt manage.py ./

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1
ARG PYTHON_VERSION=3.11

COPY --from=base /app .

RUN pip install -r requirements.txt
RUN python manage.py migrate

CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:8080"]