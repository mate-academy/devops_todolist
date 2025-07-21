ARG PYTHON_VERSION=3.13.1
FROM python:${PYTHON_VERSION} AS base
WORKDIR /build

COPY requirements.txt . ./

FROM python:${PYTHON_VERSION}-slim AS run
WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY --from=base /build .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]