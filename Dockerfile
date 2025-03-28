ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION} AS base

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

ENV DJANGO_ALLOWED_HOSTS=0.0.0.0

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
