# Build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} as base
WORKDIR /app

COPY . /app

# Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1

# Copy the built application and installed dependencies from the build stage
COPY --from=base /app .

# Execute database migration as RUN instruction
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
RUN python manage.py migrate

# Expose port 8080 to the host
EXPOSE 8080

# Define the command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
