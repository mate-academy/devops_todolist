ARG PYTHON_VERSION=3.8-slim

FROM python:${PYTHON_VERSION} AS Builder

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN python -m venv /app/.venv 
ENV PATH=/app/.venv/bin:${PATH}

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION} AS Runner

WORKDIR /app

ENV PATH=/app/.venv/bin:${PATH}

COPY --from=Builder /app/.venv /app/.venv
COPY . .

RUN python manage.py migrate
EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
