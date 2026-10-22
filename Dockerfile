# Python base image version, can be overridden with --build-arg PYTHON_VERSION=...
ARG PYTHON_VERSION=3.10

# ---------- Build stage: install Python dependencies into a virtualenv ----------
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# ---------- Run stage: slim image with only the venv and app code ----------
FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1
ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /app

COPY --from=builder /opt/venv /opt/venv
COPY . .

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8080"]
