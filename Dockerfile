# Build Stage
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app
COPY . . 

# Run it babyyy
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY . .
RUN pip install --upgrade pip && \
pip install -r requirements.txt && \
python manage.py migrate
EXPOSE 8080
CMD ["python", "manage.py","runserver", "0.0.0.0:8080"]
