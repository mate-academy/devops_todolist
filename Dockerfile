ARG PYTHON_VERSION=3.9.6

# Build stage
FROM python:${PYTHON_VERSION} AS builder

ENV PYTHONUNBUFFERED=1

WORKDIR /devops_todolist

COPY requirements.txt .

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install --no-cache-dir -r requirements.txt

# Run stage
FROM python:${PYTHON_VERSION}-slim AS runner

ENV PYTHONUNBUFFERED=1
ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /devops_todolist

COPY --from=builder /opt/venv /opt/venv
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]