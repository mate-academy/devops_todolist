# Build Stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app
COPY . /app

# Run Stage
ENV PYTHONUNBUFFERED=1
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app
COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"]