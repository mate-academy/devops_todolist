ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}-slim AS build

ENV PYTHONUNBUFFERED=1

WORKDIR /build

RUN python -m venv /opt/venv 

ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /opt/venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

COPY . /app

RUN python ./manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]