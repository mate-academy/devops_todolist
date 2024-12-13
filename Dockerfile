# Используем официальный образ Python
FROM python:3.8-slim AS build

# Устанавливаем переменные окружения
ENV PYTHONUNBUFFERED=1

# Создаем рабочую директорию
WORKDIR /app

# Копируем только requirements.txt для кэширования зависимостей
COPY requirements.txt /app/

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект в контейнер
COPY . /app/

# Выполняем миграции (при сборке базы данных может не быть, удаляем этот шаг)
# RUN python manage.py migrate

# Указываем порт, который будет использовать приложение
EXPOSE 8080

# Команда для запуска приложения
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"]
