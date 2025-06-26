ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim AS runner

RUN groupadd -r appuser && useradd -r -g appuser appuser

WORKDIR /app

RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin

COPY . .

RUN python manage.py migrate

RUN chown -R appuser:appuser /app

ENV PYTHONUNBUFFERED=1

USER appuser

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]