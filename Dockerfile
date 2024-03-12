# Use Python base image with ARG version
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} as base

# Set working directory in the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY . .

FROM python:${PYTHON_VERSION}

WORKDIR /app

# Set environment variables
ENV PYTHONUNBUFFERED=1

COPY --from=base /app .

RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

# Execute database migration
RUN python manage.py migrate

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
