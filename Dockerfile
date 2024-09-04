ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate

CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:8080"]
