ARG PYTHON_VERSION=3.14

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .
COPY manage.py .
COPY accounts/ ./accounts/
COPY api/ ./api/
COPY lists/ ./lists/
COPY todolist/ ./todolist/


FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /app .

RUN pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]