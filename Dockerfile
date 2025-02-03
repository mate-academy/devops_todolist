# Build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
# Set a working directory
WORKDIR /app
# Copy the application code into the container
COPY . .
COPY manage.py requirements.txt ./

# Run stage
FROM python:${PYTHON_VERSION} AS run
WORKDIR /app
# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1
# Copy the built application and installed dependencies from the build stage
COPY --from=base /app .
RUN pip install --upgrade pip && \
pip install -r requirements.txt
# Expose port 8080 to the host
EXPOSE 8080
# Define the command to run the application
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"]