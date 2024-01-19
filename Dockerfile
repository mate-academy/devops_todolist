# use pyton 3.8 as base image
ARG PYTHON_VERSION=3.8

# build stage
FROM python:${PYTHON_VERSION} AS build-stage

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt
RUN python manage.py migrate


# run stage
FROM python:${PYTHON_VERSION}-slim AS run-stage
WORKDIR /app
COPY --from=build-stage /app .
ENV PYTHONUNBUFFERED=1


EXPOSE 8000

# define command to run
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
