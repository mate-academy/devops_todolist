ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

COPY --from=build /app .

RUN pip install --upgrade pip && pip install -r requirements.txt

RUN python manage.py migrate

ENV PYTHONUNBUFFERED=1 

EXPOSE 8080

ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]