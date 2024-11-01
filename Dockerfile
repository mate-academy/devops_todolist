ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . ./

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

EXPOSE 8080
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]