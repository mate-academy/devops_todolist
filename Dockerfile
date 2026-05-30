# Build stage
ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

# Copy list of required packages to install
COPY requirements.txt ./

# Create venv
RUN python -m venv venv

# Install requirements using venv and upgrade pip
RUN ./venv/bin/pip install --upgrade pip && \
    ./venv/bin/pip install -r requirements.txt

# Copy the application code into the container
COPY accounts ./accounts/
COPY api ./api/
COPY lists  ./lists/
COPY todolist ./todolist/
COPY manage.py ./

# Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1

# Copy the built application and installed dependencies from the build stage
COPY --from=base /app .

# Run migration
RUN ./venv/bin/python manage.py migrate

# Expose port 8080 to the host
EXPOSE 8080

# Define the command to run the application
CMD ["./venv/bin/python", "manage.py", "runserver", "0.0.0.0:8080"]