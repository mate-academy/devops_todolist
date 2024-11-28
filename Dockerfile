ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION} AS runtime

WORKDIR /app

COPY --from=base /app /app

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
