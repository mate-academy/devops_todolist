ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate --noinput

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /app/requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY --from=builder /app .

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
