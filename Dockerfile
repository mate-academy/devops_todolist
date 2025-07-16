# Build stage
ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-slim AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip \
    && pip install --prefix=/install -r requirements.txt

# Run stage
FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY --from=build /install /usr/local
COPY --from=build /app /app

# Виконуємо міграції
RUN python manage.py migrate

EXPOSE 8080

# 👇 Тимчасово додаємо * до ALLOWED_HOSTS лише в контейнері
CMD ["sh", "-c", "sed -i \"s/^ALLOWED_HOSTS = .*/ALLOWED_HOSTS = ['*']/\" todolist/settings.py && python manage.py runserver 0.0.0.0:8080"]
