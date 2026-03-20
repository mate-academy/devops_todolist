ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}-slim AS base

WORKDIR /app

COPY requirements.txt .

RUN python -m venv /opt/venv

ENV PATH="/opt/venv/bin:${PATH}"

RUN pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=base /opt/venv /opt/venv

ENV PATH="/opt/venv/bin:${PATH}"

COPY . .

RUN python manage.py migrate

ENV PYTHONUNBUFFERED=1 

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8080"]