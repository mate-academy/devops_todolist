# Build stage
ARG PYTHON_VERSION=3.13
FROM python:${PYTHON_VERSION}-alpine AS base
WORKDIR /app

COPY requirements.txt ./
RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt

COPY manage.py ./
COPY api ./api
COPY accounts ./accounts
COPY lists ./lists
COPY todolist ./todolist

# Runtime stage
FROM python:${PYTHON_VERSION}-alpine
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .
COPY --from=base /install /usr/local

RUN python manage.py migrate

EXPOSE 8080

VOLUME /app/db

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
