FROM python:3.9

ARG PYTHON_VERSION=3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install django

COPY . .

RUN python manage.py migrate

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD python manage.py runserver 0.0.0.0:8080

CMD python manage.py runserver 0.0.0.0:8080
