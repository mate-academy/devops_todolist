ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS build

WORKDIR /devops_todolist

COPY requirements.txt .
RUN pip install --upgrade pip &&  \
    pip install --prefix=/install -r requirements.txt


ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /devops_todolist

COPY --from=build /install /usr/local
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

