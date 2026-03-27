ARG PYTHON_VERSION=3.9-slim

FROM python:${PYTHON_VERSION} as builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --user --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /root/.local /root/.local
COPY . .

ENV PATH=/root/.local/bin:$PATH

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]