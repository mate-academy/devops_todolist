# Build stage
ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION}-slim AS base

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

# Run stage
FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /usr/local /usr/local
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
