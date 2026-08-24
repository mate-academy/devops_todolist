ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . .
RUN python manage.py migrate

FROM python:${PYTHON_VERSION}

WORKDIR /app

COPY --from=builder /app /app

RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
