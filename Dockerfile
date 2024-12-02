ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION} AS base

WORKDIR /devops_todolist

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /devops_todolist

ENV PYTHONUNBUFFERED=1

COPY --from=base /devops_todolist .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]