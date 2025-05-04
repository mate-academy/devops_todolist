ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION} AS build
WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /app /app

RUN pip install --upgrade pip && \  
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]


