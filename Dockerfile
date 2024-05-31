ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /devops_todolist

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /devops_todolist

COPY --from=base /devops_todolist .

RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    default-libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]





