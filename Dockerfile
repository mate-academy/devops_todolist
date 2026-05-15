# ─── Build Stage ───────────────────────────────────────────────────────────────
ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

# Install dependencies into a separate location for clean copying
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --prefix=/install -r requirements.txt


# ─── Run Stage ─────────────────────────────────────────────────────────────────
ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy installed packages from builder
COPY --from=builder /install /usr/local

# Copy project source code
COPY . .

# Run database migrations
RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
