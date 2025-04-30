ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-slim as builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install --user --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

COPY . .

EXPOSE 8080

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"]
