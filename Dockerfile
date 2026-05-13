ARG PYTHON_VERSION=3.8-slim
FROM python:${PYTHON_VERSION} AS builder
WORKDIR /app
COPY requirements.txt .
RUN ls -la
RUN apt-get update && apt-get install -y build-essential \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY . .
ENV PYTHONUNBUFFERED=1
RUN python manage.py migrate
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
