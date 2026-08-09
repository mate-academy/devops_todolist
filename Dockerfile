ARG PYTHON_VER=3.8

FROM python:${PYTHON_VER} AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt

FROM python:${PYTHON_VER}-slim AS run

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=build /install /usr/local
COPY . .

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
