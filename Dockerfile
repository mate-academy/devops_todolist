# Build stage
ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}-slim AS build
WORKDIR /app

COPY . .

# Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app


# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1


# Copy the built application and installed dependencies from the build stage
COPY --from=build /app .
RUN pip install --upgrade pip && \
pip install -r requirements.txt && \
    python manage.py migrate

# Expose port 8080 to the host
EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
