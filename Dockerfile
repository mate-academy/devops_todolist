ARG PYTHON_VERSION=3.12.3
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt && \
    rm -rf /var/lib/apt/lists/*

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1

COPY --from=base /install /usr/local

COPY . .

RUN chmod +x entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/app/entrypoint.sh"]

