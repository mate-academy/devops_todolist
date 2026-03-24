ARG PYTHON_VERSION=3.11
# builder stage
FROM python:${PYTHON_VERSION} AS base
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt

# app stage
FROM python:${PYTHON_VERSION}-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY --from=base /install /usr/local
COPY . .
RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver"]

CMD ["0.0.0.0:8080"]