ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /install /usr/local
COPY . .

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]