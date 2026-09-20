ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim
ARG PYTHON_VERSION
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY --from=builder /usr/local/lib/python${PYTHON_VERSION}/site-packages /usr/local/lib/python${PYTHON_VERSION}/site-packages
COPY . . 

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py"]

CMD ["runserver", "0.0.0.0:8080"]
