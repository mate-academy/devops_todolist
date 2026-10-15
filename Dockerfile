ARG PYTHON_BASE_IMAGE=python:3.9

FROM ${PYTHON_BASE_IMAGE} AS base

WORKDIR /app

COPY . ./

FROM ${PYTHON_BASE_IMAGE}-slim AS runtime

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate

ENTRYPOINT ["python", "manage.py", "runserver"]

CMD ["0.0.0.0:8080"]