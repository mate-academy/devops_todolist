ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1

WORKDIR /devops_todolist

COPY . .

RUN pip install -r requirements.txt

CMD sh -c "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"

EXPOSE 8080
