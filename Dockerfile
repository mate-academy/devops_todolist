ARG PYTHON_VERSION=3.8-slim

FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1

WORKDIR /todo_list_app

COPY . .
RUN pip install -r ./requirements.txt
RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]