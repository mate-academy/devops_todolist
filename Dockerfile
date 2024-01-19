# Build stage
ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app
COPY . .

# Runtime stage
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=base /app .

RUN pip install -r requirements.txt; \
  python manage.py migrate

ENV PYTHONUNBUFFERED=1

EXPOSE 8080
ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]
