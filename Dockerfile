ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.12/site-packages

COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]