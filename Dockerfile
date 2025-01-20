ARG PYTHON_BASE_VERSION=3.10
FROM python:${PYTHON_BASE_VERSION} AS build

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY .env /app/

COPY . /app/

RUN python manage.py migrate

FROM python:${PYTHON_BASE_VERSION}
WORKDIR /app

COPY --from=build /app /app

RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONUNBUFFERED=1

# Запуск сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
