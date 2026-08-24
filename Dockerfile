ARG PYTHON_VERSION=3.11-slim

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt 

COPY . . 

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]