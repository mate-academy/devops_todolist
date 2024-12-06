ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /app .

RUN pip install --no-cache-dir -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
