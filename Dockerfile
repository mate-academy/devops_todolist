ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV APP_ENV="local"
ENV PYTHONUNBUFFERED=1
COPY --from=builder /app ./
COPY --from=builder /usr/local /usr/local

EXPOSE 8080

ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]