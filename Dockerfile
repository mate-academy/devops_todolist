ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY . ./

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /app .

RUN pip install --upgrade pip &&  \
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]