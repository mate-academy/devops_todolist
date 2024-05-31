ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . /app

FROM python:${PYTHON_VERSION}

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app /app

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
