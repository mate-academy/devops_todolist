ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION}-slim AS runner

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy installed packages from build stage
COPY --from=base /install /usr/local

# Copy application source code
COPY . .

# Execute database migration
RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]