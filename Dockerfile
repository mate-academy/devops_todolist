# ---------- Build stage ----------
ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install --prefix=/install -r requirements.txt

# ---------- Run stage ----------
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /install /usr/local
COPY . .

RUN python manage.py migrate --noinput

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]