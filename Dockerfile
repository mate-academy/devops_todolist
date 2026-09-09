ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

RUN python -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS prod

ENV PYTHONUNBUFFERED=1
ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /app

COPY --from=builder /opt/venv /opt/venv
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
