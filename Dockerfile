ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt
RUN python manage.py migrate

CMD python manage.py runserver 0.0.0.0:8080
