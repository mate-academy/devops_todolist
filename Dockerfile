ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
ENV PYTHONUNBUFFERED=1
RUN python manage.py migrate
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
