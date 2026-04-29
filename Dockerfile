ARG PYTHON_VERSION=3.8-slim
FROM python:${PYTHON_VERSION} AS builder
WORKDIR /app
COPY requirements.txt ./
RUN pip install --target=/packages -r requirements.txt
COPY . ./
ENV PYTHONPATH=/packages
RUN python manage.py migrate
# Run stage
FROM python:${PYTHON_VERSION}
WORKDIR /app
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/packages
COPY --from=builder /packages /packages
COPY --from=builder /app /app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
