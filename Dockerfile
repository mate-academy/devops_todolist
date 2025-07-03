# ---------- STAGE 1: build dependencies ----------
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && \
    apt-get install -y gcc libffi-dev && \
    pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt && \
    apt-get purge -y --auto-remove gcc libffi-dev && \
    rm -rf /var/lib/apt/lists/*

# ---------- STAGE 2: final image ----------
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY --from=builder /install /usr/local
COPY . .

# ❗️ Виконуємо міграції після того як Django вже встановлено
RUN python manage.py migrate

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]