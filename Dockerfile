ARG PYTHON_VERSION=3.9-slim
FROM python:${PYTHON_VERSION} AS builder


ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1

COPY --from=builder /install /usr/local
COPY . .

RUN python manage.py migrate

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]