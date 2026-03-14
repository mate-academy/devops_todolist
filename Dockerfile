ARG PYTHON_VERSION=3.13

FROM python:${PYTHON_VERSION} as base

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR app

COPY --from=base /app .

RUN pip install -r requirements.txt && \
    python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
