
ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS build

WORKDIR /todolist

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
