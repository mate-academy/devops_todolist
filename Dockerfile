ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} as build
WORKDIR /app/
COPY . .

FROM python:${PYTHON_VERSION}-slim as run
ENV PYTHONUNBUFFERED=1

WORKDIR /todoapp
COPY --from=build /app .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
