ARG PYTHON_VERSION=3.13-slim
FROM python:${PYTHON_VERSION} AS builder
WORKDIR /build

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH" \
    PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install -r requirements.txt


FROM python:${PYTHON_VERSION} AS runtime
WORKDIR /app

COPY --from=builder /opt/venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH" \
    PYTHONUNBUFFERED=1

COPY . .

RUN python manage.py migrate

ENTRYPOINT ["python"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]