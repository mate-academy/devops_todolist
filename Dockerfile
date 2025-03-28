# Build stage
ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

# Run stage
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt
RUN python manage.py migrate

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]
