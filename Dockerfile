ARG PYTHON_VERSION=3.10

# Build stage
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

# Run stage
FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /app .

RUN pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8080"]