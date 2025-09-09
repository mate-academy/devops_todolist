# 1. Стадія збірки: встановлюємо залежності
FROM python:3.11-slim AS builder
WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt

COPY . .

# 2. Фінальна стадія: формуємо ратайм-образ
FROM python:3.11-slim
WORKDIR /app

COPY --from=builder /install /usr/local
COPY --from=builder /app /app

ENV PYTHONUNBUFFERED=1
EXPOSE 8000

CMD ["gunicorn", "todoapp.wsgi:application", "--bind", "0.0.0.0:8000"]