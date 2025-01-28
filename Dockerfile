FROM python:3.8-slim

# Робоча директорія
WORKDIR /app

# Копіюємо усі файли у контейнер
COPY . /app

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Виконуємо міграцію бази даних
RUN python manage.py migrate

# Відкриваємо порт 8000
EXPOSE 8000

# Команда запуску сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
