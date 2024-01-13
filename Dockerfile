ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /app .

RUN pip install -r requirements.txt

RUN pip3 install django

RUN python manage.py runserver

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]