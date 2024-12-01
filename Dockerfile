#build stage

ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt --target=/dependencies

ENV PYTHONPATH=/dependencies

COPY . .

RUN python manage.py migrate

# run stage


ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1

COPY --from=build /dependencies /usr/local/lib/python3.10/site-packages/

COPY --from=build /app /app

WORKDIR /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]