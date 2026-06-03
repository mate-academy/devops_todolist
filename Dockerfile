ARG version=3.8-alpine
FROM python:${version} AS builder

WORKDIR /app

# Встановлюємо gcc та залежності для компіляції
RUN apk add --no-cache gcc musl-dev libffi-dev

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

FROM python:${version}

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.8/site-packages \
                    /usr/local/lib/python3.8/site-packages
COPY . .

RUN python manage.py migrate

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]