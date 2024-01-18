# use pyton 3.8 as base image
ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS builder

# Set environment variables
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

# install requirements
RUN pip install --no-cache-dir -r requirements.txt

# run  Django migrations
RUN python manage.py migrate

EXPOSE 8000

# define command to run
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
