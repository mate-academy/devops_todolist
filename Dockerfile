#------Build Stage------
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . . 
#------Run Stage------
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /app .

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]