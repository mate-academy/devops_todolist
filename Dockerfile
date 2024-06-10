ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app

COPY ./ .

FROM python:${PYTHON_VERSION}-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY --from=base /app .

RUN pip install --upgrade pip && \
pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8080"]