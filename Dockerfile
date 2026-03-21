ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

FROM python:${PYTHON_VERSION}-slim AS runtime
WORKDIR /app
COPY --from=builder /app /app

ENV PATH=/root/.local/bin:$PATH
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
