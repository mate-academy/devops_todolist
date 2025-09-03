ARG PYTHON_VERSION=3.13-slim
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

RUN python -m venv /venv

COPY requirements.txt .
RUN /venv/bin/pip install --upgrade pip \
 && /venv/bin/pip install --no-cache-dir -r requirements.txt

# --------------------------------------------

FROM python:${PYTHON_VERSION}

WORKDIR /app
ENV PYTHONUNBUFFERED=1
ENV PATH="/venv/bin:$PATH"

COPY --from=builder /venv /venv

COPY . .

RUN python manage.py migrate

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
