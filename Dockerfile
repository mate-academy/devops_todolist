ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION}-slim AS runner

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /install /usr/local
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]