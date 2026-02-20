ARG PYTHON_IMAGE=3.12-slim

# ---------- build stage ----------
FROM python:${PYTHON_IMAGE} AS build
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ---------- run stage ----------
FROM python:${PYTHON_IMAGE} AS run
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /usr/local /usr/local
COPY . .


RUN python manage.py migrate

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]