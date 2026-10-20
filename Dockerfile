ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app


RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt



FROM python:${PYTHON_VERSION}-slim

WORKDIR /app


ENV PYTHONUNBUFFERED=1


COPY --from=builder /root/.local /root/.local
COPY . .


ENV PATH=/root/.local/bin:$PATH


RUN python manage.py migrate


EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]