# syntax=docker/dockerfile:1

ARG PYTHON_VERSION=3.11-slim

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt ./
RUN python -m pip install --upgrade pip && \
    python -m pip install --no-cache-dir -r requirements.txt

COPY . .
RUN python manage.py migrate

FROM python:${PYTHON_VERSION} AS runtime

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /usr/local /usr/local
COPY --from=build /app /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
