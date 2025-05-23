# Етап збірки
FROM python:3.10-slim AS builder

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install --user -r requirements.txt

# Етап виконання
FROM python:3.10-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /root/.local /root/.local
COPY . .

ENV PATH=/root/.local/bin:$PATH

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
