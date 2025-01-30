# Define the Python version as an argument
ARG PYTHON_VERSION=3.8

# Build stage
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app

# Set environment variable to prevent Python from buffering
ENV PYTHONUNBUFFERED=1

# Run Stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

COPY . .

# Copy the built application and installed dependencies from the build stage
COPY --from=base /app .
RUN pip install --upgrade pip && \
pip install -r requirements.txt

# Run database migrations
RUN python manage.py migrate

EXPOSE 8080
CMD [ "python", "manage.py", "runserver"]
