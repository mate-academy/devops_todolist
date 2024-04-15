# Build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY . .

# Run stage
FROM python:${PYTHON_VERSION}-slim

# Set env variable to prevent Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /app .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt 

# Run migrations
RUN python manage.py migrate

EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]