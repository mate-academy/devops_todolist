ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt ./

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . .

FROM python:${PYTHON_VERSION}-slim AS runner

ENV PYTHONUNBUFFERED=1

WORKDIR /app


COPY --from=base /app /app

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "python manage.py migrate && exec python manage.py runserver 0.0.0.0:8080"]
