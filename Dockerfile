ARG PYTHON_VERSION=3.8

# Build stage
FROM python:${PYTHON_VERSION}-slim AS builder
WORKDIR /build
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# Run stage
FROM python:${PYTHON_VERSION}-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY . .
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]