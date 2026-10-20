ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS build_stage

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build_stage /app .

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
