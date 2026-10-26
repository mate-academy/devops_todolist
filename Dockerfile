ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt  manage.py .
COPY accounts/ accounts/
COPY api/ api/
COPY lists/ lists/
COPY todolist/ todolist/

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]