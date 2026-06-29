ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY . .

RUN pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]