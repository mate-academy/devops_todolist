# Build stage
ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-slim AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY . /app

# Встановлюємо пакети в /install і додаємо його до PYTHONPATH
RUN pip install --upgrade pip \
    && pip install --target=/install -r requirements.txt

ENV PYTHONPATH=/install
RUN python manage.py migrate

# Run stage
FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY --from=build /install /install
COPY --from=build /app /app
ENV PYTHONPATH=/install

EXPOSE 8080

CMD ["sh", "-c", "sed -i \"s/^ALLOWED_HOSTS = .*/ALLOWED_HOSTS = ['*']/\" todolist/settings.py && python manage.py runserver 0.0.0.0:8080"]
