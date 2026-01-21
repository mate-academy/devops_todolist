
ARG PYTHON_VERSION=3.11-slim

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --user --no-warn-script-location -r requirements.txt

FROM python:${PYTHON_VERSION}

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]