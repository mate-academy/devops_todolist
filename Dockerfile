ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION} AS build
WORKDIR /app
COPY . ./

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app
COPY --from=build /app .

ENV PYTHONUNBUFFERED=1

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]