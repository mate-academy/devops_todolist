ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .


FROM python:${PYTHON_VERSION}-alpine

ENV PYTHONUNBUFFERED=1

WORKDIR /app


COPY --from=base /app .

RUN pip install --upgrade pip && \
pip install -r requirements.txt


EXPOSE 8080

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
