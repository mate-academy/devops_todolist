# Repository
https://hub.docker.com/repository/docker/ivanoid777/todoapp/general

# -------- Dockerfile --------

# Builder
ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION} AS builder
LABEL authors="Ivan"
WORKDIR /todoapp
COPY . .

# run stage
FROM python:${PYTHON_VERSION}-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /todoapp
COPY --from=builder /todoapp .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

# -------- How to build and run --------

# 1. Build image from Dockerfile
docker build -t ivanoid777/mate_repo:1.0 .

# 2. Run container
docker run -d -p <host_port>:8080 ivanoid777/mate_repo:1.0

# 3. Open in browser
http://127.0.0.1:<host_port>