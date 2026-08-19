ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt .
COPY . .

RUN pip install -r requirements.txt --target /app/packages
ENV PYTHONPATH=/app/packages
RUN python manage.py migrate

FROM python:${PYTHON_VERSION}

WORKDIR /app

COPY --from=builder /app /app

ENV PYTHONPATH=/app/packages
ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
