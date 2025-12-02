ARG PYTHON_BASE_VERSION=3.13


# Build stage
FROM python:${PYTHON_BASE_VERSION} AS build

ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

COPY . .
# Run database migrations after copying code
RUN python manage.py migrate

# Run stage
FROM python:${PYTHON_BASE_VERSION}
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY --from=build /app /app
# Copy installed Python packages from build stage
COPY --from=build /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
