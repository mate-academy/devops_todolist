ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt manage.py ./
COPY todolist ./todolist/
COPY lists ./lists/
COPY api ./api/
COPY accounts ./accounts/

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /app .
COPY --from=builder /usr/local /usr/local

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
