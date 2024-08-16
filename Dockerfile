ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim as builder
WORKDIR /app

COPY requirements.txt ./

RUN pip install --upgrade pip && \
    pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

COPY --from=builder /install /usr/local

COPY . .

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

RUN ["python", "manage.py", "migrate"]

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
