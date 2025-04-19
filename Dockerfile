ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} AS build

WORKDIR app/

COPY manage.py requirements.txt ./

# keep Django modules stucture
COPY accounts/ accounts/
COPY api/ api/
COPY lists/ lists/
COPY todolist/ todolist/

FROM python:${PYTHON_VERSION}-slim

WORKDIR app/
ENV PYTHONUNBUFFERED=1

COPY --from=build app/ .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]