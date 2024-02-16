ARG python_version=3.9-slim
FROM python:${python_version}

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt
RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

