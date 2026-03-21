ARG PYTHON_VERSION=3.11

# Етап збірки
FROM python:${PYTHON_VERSION}-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# Етап виконання
FROM python:${PYTHON_VERSION}-slim AS runtime
WORKDIR /app
COPY --from=builder /app /app
# Встановлюємо залежності ще раз у фінальному образі
COPY requirements.txt .
RUN pip install -r requirements.txt
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
