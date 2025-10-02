ARG PYTHON_VERSION=3.9 

FROM python:${PYTHON_VERSION}-slim AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --only-binary=all --no-cache-dir -r requirements.txt

COPY . .

FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

COPY --from=build /usr/local/lib/python${PYTHON_VERSION%.*}/site-packages /usr/local/lib/python${PYTHON_VERSION%.*}/site-packages
COPY --from=build /usr/local/bin /usr/local/bin

COPY . .

EXPOSE 8080

CMD ["sh", "-c", "python manage.py migrate --noinput && python manage.py runserver 0.0.0.0:8080"]
