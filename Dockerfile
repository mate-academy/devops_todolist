ARG PYTHON_VERSION=3.11


FROM python:${PYTHON_VERSION}-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN python -m venv /opt/venv
RUN /opt/venv/bin/pip install -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS runtime
COPY --from=builder /opt/venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
WORKDIR /app
COPY . .
ENV PYTHONUNBUFFERED=1
RUN python manage.py migrate
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]