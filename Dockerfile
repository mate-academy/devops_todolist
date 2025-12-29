# STAGE BUILD
ARG PY_VERSION=3.9

FROM python:${PY_VERSION} AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . ./

# STAGE RUN
FROM python:${PY_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY --from=build /app .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]