#build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

#run stage
FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /app .
RUN pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080
CMD ["python","manage.py","runserver","0.0.0.0:8080"]
