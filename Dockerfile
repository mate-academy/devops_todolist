ARG PYTHON_VERSION=3.12


FROM python:${PYTHON_VERSION} AS build-stage

WORKDIR /app

COPY . /app

FROM python:${PYTHON_VERSION}-slim AS run-stage

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build-stage /app /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8080"]