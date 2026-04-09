ARG PYTHON_VERSION=3.12-slim


FROM python:${PYTHON_VERSION} AS build

WORKDIR /devops_todolist

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt



FROM python:${PYTHON_VERSION} AS run

WORKDIR /devops_todolist

ENV PYTHONUNBUFFERED=1

COPY --from=build /install /usr/local

COPY . .

EXPOSE 8080

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8080"]