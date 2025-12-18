ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=base /app .

ENV PYTHONUNBUFFERED=1

RUN pip install --upgrade pip && pip install -r requirements.txt
RUN python3 manage.py migrate

EXPOSE 8080

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8080"]
