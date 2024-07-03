ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-slim AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /build

COPY requirements.txt .

COPY . .

FROM python:${PYTHON_VERSION}-slim as run

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /build /app

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir django

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
