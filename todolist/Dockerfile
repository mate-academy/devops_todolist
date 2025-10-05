# ---------- Builder stage ----------
ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim AS builder

ENV PYTHONUNBUFFERED=1

# Системні залежності
RUN apt-get update && apt-get install -y gcc libpq-dev && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Копіюємо залежності та встановлюємо
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь проєкт
COPY . .

# Виконуємо міграції під час збірки
RUN python manage.py migrate

# ---------- Runtime stage ----------
FROM python:${PYTHON_VERSION}-slim AS runtime

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Копіюємо лише необхідне з builder
COPY --from=builder /app /app

EXPOSE 8080

# Запуск Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
