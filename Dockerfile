
ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install --upgrade pip && pip install -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /opt/venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
