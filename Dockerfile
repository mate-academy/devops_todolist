ARG PYTHON_VERSION=3.12-alpine

FROM python:${PYTHON_VERSION}

WORKDIR /app
COPY . .
ENV PYTHONUNBUFFERED=1
RUN pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
