ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /usr/local/lib/python3.10/ /usr/local/lib/python3.10/
COPY --from=build /usr/local/bin/ /usr/local/bin/

COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
