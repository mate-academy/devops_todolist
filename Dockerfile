ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} as base
LABEL authors="user"

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

COPY --from=base /usr/local/lib/ /usr/local/lib/
COPY --from=base /usr/local/bin/ /usr/local/bin/
COPY --from=base /app /app

ENV PYTHONUNBUFFERED=1

EXPOSE 8080
CMD ["python", "/app/manage.py", "runserver", "0.0.0.0:8080"]
