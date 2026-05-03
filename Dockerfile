ARG PY_VER=3.8

FROM python:${PY_VER}-slim as builder

WORKDIR /install

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && \
    pip wheel --wheel-dir /wheels -r requirements.txt

FROM python:${PY_VER}-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /wheels /wheels

COPY requirements.txt .
RUN pip install --no-index --find-links=/wheels -r requirements.txt

COPY . .

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "runserver" ]
CMD [ "0.0.0.0:8080" ]
