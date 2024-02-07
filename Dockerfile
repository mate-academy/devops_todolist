ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} as build

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

RUN python manage.py migrate

FROM build as run

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]