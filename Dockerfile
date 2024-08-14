# Build Stage
ARG PYTHON_IMAGE=python:3.8
FROM ${PYTHON_IMAGE} as builder
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Run Stage
FROM ${PYTHON_IMAGE}-slim
WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY --from=builder /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY . .

EXPOSE 8080

RUN python manage.py migrate

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
