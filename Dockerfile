ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim AS builder

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY --from=builder /install /usr/local

COPY . .

RUN python manage.py migrate

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]