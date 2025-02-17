# Build Stage
ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Run Stage

FROM python:${PYTHON_VERSION}

WORKDIR /app

COPY --from=build /usr/local/lib/python3.11 /usr/local/lib/python3.11
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]


