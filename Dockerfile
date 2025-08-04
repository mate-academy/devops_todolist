ARG PYTHON_VERSION=3.11-slim
FROM python:${PYTHON_VERSION} AS builder

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION} AS runtime

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /install /usr/local
COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]