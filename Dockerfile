ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS build
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN python manage.py migrate

FROM python:${PYTHON_VERSION}-slim AS run
WORKDIR /app
COPY --from=build /app .
COPY --from=build /usr/local/lib/python3.10/site-packages /usr/local/lib/python3.10/site-packages
ENV PYTHONUNBUFFERED=1
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
