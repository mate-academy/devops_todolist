ARG PYTHON_VERSION=3.11-slim
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --user -r requirements.txt

FROM python:${PYTHON_VERSION}

ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage", "runserver", "0.0.0.0:8080"]