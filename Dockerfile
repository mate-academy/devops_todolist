ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip3 install -r requirements.txt

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]
