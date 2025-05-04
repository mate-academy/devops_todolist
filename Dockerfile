ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=build /app /app

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["sh", "-c", "python manage.py runserver 0.0.0.0:8080"]
