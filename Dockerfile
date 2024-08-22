ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}-slim AS base


ENV PYTHONUNBUFFERED=1


WORKDIR /app


COPY . .


RUN pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

# Команда для запуску додатка
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

