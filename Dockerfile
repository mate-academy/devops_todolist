ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app
COPY . .
RUN pip install --prefix=/install -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /install /usr/local
COPY --from=base /app .
RUN python manage.py migrate

EXPOSE 8080
ENTRYPOINT [ "python", "manage.py"]
CMD ["runserver", "0.0.0.0:8080"]