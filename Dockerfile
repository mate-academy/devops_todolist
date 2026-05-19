ARG python_version=3.8
FROM python:${python_version} AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:${python_version}
WORKDIR /app
COPY --from=builder /install /usr/local
COPY . .
RUN python manage.py migrate
ENV PYTHONUNBUFFERED=1
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
