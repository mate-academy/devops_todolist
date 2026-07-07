ARG PYTHON_VERSION=3.9-slim
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN python manage.py migrate

FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1
ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /app

COPY --from=builder /opt/venv /opt/venv
COPY --from=builder /app .

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]