ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS build

WORKDIR /

COPY manage.py .
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .



FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1

COPY --from=build requirements.txt .
RUN pip install -r requirements.txt
COPY --from=build . .
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
