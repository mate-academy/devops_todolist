ARG PYTHON_VERSION=3.8

# Stage 1: Build
FROM python:${PYTHON_VERSION} AS build

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Создаём виртуальное окружение и активируем
RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate

# Stage 2: Final
FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Копируем виртуальное окружение из build-стейджа
COPY --from=build /venv /venv
ENV PATH="/venv/bin:$PATH"

COPY --from=build /app /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
