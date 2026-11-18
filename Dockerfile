ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

RUN pip install Flask

FROM python:${PYTHON_VERSION}-slim AS runtime

WORKDIR /app

COPY --from=builder /install /usr/local

COPY . .

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]