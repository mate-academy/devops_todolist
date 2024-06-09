FROM python:3.12-alpine

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
