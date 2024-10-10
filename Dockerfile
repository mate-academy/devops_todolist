ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS base
WORKDIR /app
COPY . ./

FROM python:${PYTHON_VERSION}-slim
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY --from=base /app .
RUN pip install -r requirements.txt
EXPOSE 8080

CMD ["python manage.py migrate", "python manage.py runserver 0.0.0.0:8080"]