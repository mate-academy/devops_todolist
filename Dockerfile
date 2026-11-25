#Build stage
ARG PYTHON_VERSION=3.9-slim
FROM python:${PYTHON_VERSION} as builder

WORKDIR /app

COPY . .

# Runtime stage
FROM python:${PYTHON_VERSION}
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /app .

RUN pip3 install -r requirements.txt && \
    python3 manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8080"]