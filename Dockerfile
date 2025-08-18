ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim AS builder
WORKDIR /app

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

RUN apt-get update && apt-get install -y --no-install-recommends build-essential \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

RUN python manage.py migrate --noinput

FROM python:${PYTHON_VERSION}-slim AS runtime
WORKDIR /app

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY --from=builder /app /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
