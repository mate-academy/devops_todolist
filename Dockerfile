# BUILDER
ARG PYTHON_VERSION=3.12.3

FROM python:${PYTHON_VERSION}-slim AS builder



WORKDIR /app

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir



# RUNNER
FROM python:${PYTHON_VERSION}-slim AS runner

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /opt/venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY ./ .


RUN python manage.py migrate 

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]