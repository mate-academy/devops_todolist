ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base

WORKDIR /DEVOPS_TODOLIST

COPY . .

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /DEVOPS_TODOLIST

RUN apt-get update && apt-get install -y gcc python3-dev libffi-dev build-essential libpq-dev && rm -rf /var/lib/apt/lists/*

COPY --from=base /DEVOPS_TODOLIST/requirements.txt .

RUN pip3 install --upgrade pip && pip3 install -r requirements.txt

COPY --from=base /DEVOPS_TODOLIST .

RUN python3 manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
