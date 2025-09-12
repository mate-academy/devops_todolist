ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --upgrade pip && \
pip install -r requirements.txt

ADD . .
RUN python manage.py migrate

FROM python:${PYTHON_VERSION}-slim AS runserver
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY --from=base /app /app
COPY --from=base /usr/local /usr/local

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]