# Build stage
ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

# Copy the application code into the container
COPY . .

# Runtime stage
FROM python:${PYTHON_VERSION}-alpine

# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy the built application and installed dependencies from the build stage
COPY --from=base /app .

# RUN apk add --no-cache libc6-compat
RUN echo "ulimit -s unlimited" >> /etc/profile.d/ulimit.sh

RUN pip3 install -r requirements.txt

RUN python manage.py migrate

# Expose port 8000 to the host
EXPOSE 8000

# Define the command to run the application
ENTRYPOINT [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]