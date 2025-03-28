ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /app .

RUN pip3 install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

ENTRYPOINT [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]

