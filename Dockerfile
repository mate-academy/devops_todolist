ARG PYTHON_VERSION=3.10-slim

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

COPY . .

RUN python manage.py migrate

FROM python:${PYTHON_VERSION} AS runner

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /root/.local /root/.local
COPY --from=builder /app /app

ENV PATH=/root/.local/bin:$PATH

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]