ARG PYTHON_VERSION=3.11-slim

FROM python:${PYTHON_VERSION} AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate

FROM python:${PYTHON_VERSION} AS runner

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /usr/local /usr/local
COPY --from=build /app /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]