ARG PYTHON_VERSION=3.11-slim

FROM python:${PYTHON_VERSION} AS base
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

FROM base AS build
COPY . /app
RUN python manage.py migrate

FROM base
COPY --from=build /app /app
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]


