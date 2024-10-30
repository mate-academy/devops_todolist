ARG PYTHON_VERSION=3.13
FROM python:${PYTHON_VERSION}-slim AS build-stage

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

FROM build-stage AS final-stage

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
