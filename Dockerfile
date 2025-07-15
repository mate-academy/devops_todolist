# Build stage
ARG PYTHON_VERSION=3.13.5
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app

# Copy the application code into the container
COPY . ./

# Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1

# Copy the built application and installed dependencies from the build stage
COPY --from=base /app .
RUN pip install --upgrade pip && \
pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
