ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

RUN pip3 install django

#RUN python manage.py migrate

COPY . .

FROM python:${PYTHON_VERSION}-slim as run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]