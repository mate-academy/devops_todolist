ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION} AS base

WORKDIR /usr/src/app

COPY . .

FROM python:${PYTHON_VERSION}-slim AS Run

ENV PYTHONUNBUFFERED=1

COPY --from=base /usr/src/app .

RUN pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
