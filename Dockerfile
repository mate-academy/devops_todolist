ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app

ENV APP_ENV="stage"
ENV PYTHONUNBUFFERED=1

COPY --from=build /install /usr/local

COPY . .

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8080"]