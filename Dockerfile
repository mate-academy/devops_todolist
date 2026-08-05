FROM python:3.12 AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --prefix=/install -r requirements.txt


FROM python:3.12-slim AS runner

WORKDIR /app

COPY --from=builder /install /usr/local

COPY . .

CMD ["python", "app.py"]