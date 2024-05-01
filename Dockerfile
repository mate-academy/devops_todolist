ARG PYTHON_VERSION=3.12-slim

FROM python:${PYTHON_VERSION}
ENV PYTHONUNBUFFERED=1

WORKDIR /todoapp
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . .
RUN python manage.py migrate

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
