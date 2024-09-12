ARG PYTHON_VERSION=3.9

#BUILD

FROM python:${PYTHON_VERSION} AS base

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

#RUN

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV ALLOWED_HOSTS=0.0.0.0

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080", "--noreload"]
