ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN python manage.py migrate
ENV PYTHONUNBUFFERED=1
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]