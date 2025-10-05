# Використовуємо Python як базовий образ
ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim

# Встановлюємо змінну для логів
ENV PYTHONUNBUFFERED=1

# Встановлюємо системні залежності
RUN apt-get update && apt-get install -y gcc libpq-dev && rm -rf /var/lib/apt/lists/*

# Робоча папка всередині контейнера
WORKDIR /app

# Копіюємо файл залежностей
COPY requirements.txt .

# Встановлюємо Python-залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо увесь проект
COPY . .

# Виконуємо міграції
RUN python manage.py migrate

# Відкриваємо порт
EXPOSE 8080

# Команда запуску
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
