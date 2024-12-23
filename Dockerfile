# Build stage
ARG PYTHON_VERSION=3.8-slim
FROM python:${PYTHON_VERSION} AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Run stage
FROM build AS runtime

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
