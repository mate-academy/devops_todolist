ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=builder /app /app

COPY --from=builder /usr/local /usr/local

ENV PYTHONUNBUFFERED=1

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]















