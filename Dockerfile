ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-alpine AS base

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
ENV PYTHONUNBUFFERED=1


COPY . .
RUN python manage.py migrate

EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
