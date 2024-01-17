ARG PYTHON_VERSION=3.8

#BUILD

FROM python:${PYTHON_VERSION} AS base

ENV PYTHONUNBUFFERED=1

WORKDIR /todo_list_app

COPY . .

#RUN

FROM python:${PYTHON_VERSION}-slim

WORKDIR /todo_list_app

COPY --from=base /todo_list_app .

RUN pip install --upgrade pip && \
    pip install -r ./requirements.txt
    
RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]