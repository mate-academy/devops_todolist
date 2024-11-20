# Build stage
ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION} AS base
WORKDIR /devops_todolist

COPY . ./

# Runtime stage
FROM python:${PYTHON_VERSION}-slim AS test
WORKDIR /devops_todolist

# Set an environment variable for the runtime
ENV PYTHONUNBUFFERED=1

# Copy the built application and installed dependencies from the build stage
COPY --from=base /devops_todolist .
RUN pip install --upgrade pip && \
pip install -r requirements.txt && \
python manage.py migrate

# Expose port 8080 to the host
EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8080"]
