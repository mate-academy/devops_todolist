ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app
COPY . .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate

FROM python:${PYTHON_VERSION}-slim AS runserver

WORKDIR /app
COPY --from=base /app /app
COPY --from=base /usr/local /usr/local


ENV PYTHONUNBUFFERED=1
EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]