ARG PYTHON_V=3.8

FROM python:${PYTHON_V}-slim AS base

WORKDIR /app

COPY . .


FROM python:${PYTHON_V}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /app /app

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
