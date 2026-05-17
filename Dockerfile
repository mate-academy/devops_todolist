### Builder stage
ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

COPY requirements.txt .

# Install system build dependencies and Python build 
RUN apt-get update \
     && apt-get install -y --no-install-recommends \
         build-essential \
         gcc \
         python3-dev \
         libbz2-dev \
         libssl-dev \
         libffi-dev \
     && rm -rf /var/lib/apt/lists/* \
     && pip install --upgrade pip wheel \
     && pip install --no-cache-dir \
         --prefix=/install \
         -r requirements.txt

### Runtime stage
FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1 

WORKDIR /app

# Create non-root user
RUN useradd --create-home --uid 1001 appuser

# Copy installed packages
COPY --from=builder /install /usr/local

# Copy application source
COPY . .

# Set ownership
RUN chown -R appuser:appuser /app

# Switch to non-root user
USER appuser

RUN python manage.py migrate

# Application port
EXPOSE 8080

# Start app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"] 