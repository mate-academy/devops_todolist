ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}-slim as builder

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /app /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
