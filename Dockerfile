ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION}-slim
WORKDIR /app    
COPY --from=builder /install /usr/local
COPY . /app

RUN python manage.py migrate
ENV PYTHONUNBUFFERED=1
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]