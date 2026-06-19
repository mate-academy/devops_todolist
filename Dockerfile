ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} as build

WORKDIR /app

COPY requirements.txt ./

RUN python -m venv /opt/venv && \
    /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /opt/venv /opt/venv

COPY . ./

RUN /opt/venv/bin/python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["/opt/venv/bin/python", "manage.py", "runserver", "0.0.0.0:8080"]
