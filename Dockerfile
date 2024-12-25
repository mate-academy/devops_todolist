ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}

ENV ENV="Local"
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN python3 manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8080"]