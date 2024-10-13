ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS build

WORKDIR /todoapp

COPY . .

FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /todoapp

COPY --from=build /todoapp .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]
