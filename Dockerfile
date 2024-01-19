# Define the Python version to use for both build and run stages
ARG PYTHON_VERSION=3.8-slim

# Build stage
FROM python:${PYTHON_VERSION} AS build-stage
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

# Run stage
FROM python:${PYTHON_VERSION} AS run-stage
COPY --from=build-stage /app /app
COPY --from=build-stage /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
WORKDIR /app
ENV PYTHONUNBUFFERED=1
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
