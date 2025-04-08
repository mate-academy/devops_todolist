ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base

ENV PYTHONUNBUFERRED=1

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFERRED=1

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

RUN python manage.py migrate

CMD ["python", "manage.py","runserver","0.0.0.0:8080"]


