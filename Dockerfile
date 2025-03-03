ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN python manage.py migrate

ENV PYTHONUNBUFFERED=1

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
