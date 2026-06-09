
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt


ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /usr/local/lib /usr/local/lib
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]