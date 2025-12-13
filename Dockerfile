ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim as run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /app .

RUN pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
