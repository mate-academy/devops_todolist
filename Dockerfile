ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim AS runtime

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /app .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate --noinput

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]