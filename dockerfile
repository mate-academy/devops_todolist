ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}-slim AS base
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM base AS final
WORKDIR /app
COPY . .
ENV PYTHONUNBUFFERED=1
RUN python manage.py migrate

EXPOSE 8080
ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]
