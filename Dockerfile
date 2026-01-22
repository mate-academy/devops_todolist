# ---------- build stage ----------
ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY . .
RUN python manage.py migrate

# ---------- run stage ----------
FROM python:${PYTHON_VERSION}-slim

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY --from=build /usr/local/lib/python*/site-packages /usr/local/lib/python*/site-packages

COPY --from=build /app /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]