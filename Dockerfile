ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && pip install --prefix=/install -r requirements.txt

ENV PYTHONPATH=/install/lib/python3.8/site-packages

RUN python manage.py migrate

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /app /app
COPY --from=build /install /usr/local

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
