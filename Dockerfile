ARG python_version=3.8

FROM python:${python_version} as base

WORKDIR /app

COPY . .

FROM python:${python_version}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .

RUN pip install -r requirements.txt 

RUN python manage.py migrate

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]