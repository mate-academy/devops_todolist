ARG PYTHON_VERSION=3.13

FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /usr/local /usr/local
COPY --from=build /app /app

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
