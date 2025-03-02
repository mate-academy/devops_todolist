ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION} AS build_stage

WORKDIR /app

COPY requirements.txt manage.py ./
COPY todolist/ ./todolist/
COPY lists/ ./lists/
COPY api/ ./api/
COPY accounts/ ./accounts/

FROM python:${PYTHON_VERSION}-slim AS run_stage

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build_stage /app .

RUN ls -la && \
    pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py" , "runserver", "0.0.0.0:8080"]


