ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} AS build
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

COPY . .

FROM python:${PYTHON_VERSION}-slim AS run
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /install /usr/local
COPY --from=build /app /app

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]