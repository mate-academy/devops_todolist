
# Build stage

  ARG PYTHON_VERSION=3.11-slim
  FROM python:${PYTHON_VERSION} AS builder
  
  ENV PYTHONUNBUFFERED=1
  
  WORKDIR /app
  
  COPY requirements.txt .
  RUN pip install --upgrade pip \
      && pip install --prefix=/install -r requirements.txt
  

  # Run stage
  
  FROM python:${PYTHON_VERSION}
  
  ENV PYTHONUNBUFFERED=1
  
  WORKDIR /app
  
  COPY --from=builder /install /usr/local
  COPY . .
  
  RUN python manage.py migrate
  
  EXPOSE 8080
  
  CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
  