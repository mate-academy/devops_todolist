# build stage
ARG PYTHON_BASE_VERSION=3.10
FROM python:${PYTHON_BASE_VERSION}-slim as build 
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt 

# run stage
FROM python:${PYTHON_BASE_VERSION}-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY . .
COPY --from=build /usr/local/lib/python3.10/site-packages /usr/local/lib/python3.10/site-packages
RUN python manage.py migrate
EXPOSE 8080 
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]