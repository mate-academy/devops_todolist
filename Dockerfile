#Build stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

ENV PYTHONUNBUFFERED=1
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Runtime stage
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

RUN apt-get update && apt-get install -y gcc libffi-dev && rm -rf /var/lib/apt/lists/*

COPY . .

COPY --from=base /app .
RUN pip install --no-cache-dir -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
