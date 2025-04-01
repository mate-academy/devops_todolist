    FROM python:${PYTHON_VERSION:-3.10}-slim AS build

    ENV PYTHONUNBUFFERED=1
    WORKDIR /app
    
    COPY requirements.txt .
    RUN pip install --upgrade pip && pip install --user -r requirements.txt
    
    FROM python:${PYTHON_VERSION:-3.10}-slim
    
    ENV PYTHONUNBUFFERED=1
    WORKDIR /app
    
    COPY --from=build /root/.local /root/.local
    ENV PATH=/root/.local/bin:$PATH
    
    COPY . .
    
    RUN python manage.py migrate
    
    EXPOSE 8080
    
    CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
    