ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION} AS builder
LABEL authors="Ivan"
WORKDIR /todoapp
COPY . .


FROM python:${PYTHON_VERSION}-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /todoapp
COPY --from=builder /todoapp .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]