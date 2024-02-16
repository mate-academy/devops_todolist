ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} as base

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV ENV="PYTHONUNBUFFERED=1"

COPY --from=base /app .

RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]