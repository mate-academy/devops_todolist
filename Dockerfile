ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS builder

ENV PYTHONUNBUFFERED=1

WORKDIR /todolist

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

FROM python:${PYTHON_VERSION} AS run_stage

ENV PYTHONUNBUFFERED=1

WORKDIR /todolist

COPY --from=builder /todolist /todolist

RUN pip install -r requirements.txt

RUN python manage.py migrate

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
