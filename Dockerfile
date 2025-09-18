# -------------------------
# Build stage
# -------------------------
ARG PYTHON_VERSION=3.12-slim
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate

# -------------------------
# Run stage
# -------------------------
FROM python:${PYTHON_VERSION} AS final

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY --from=builder /app /app

EXPOSE 8000
