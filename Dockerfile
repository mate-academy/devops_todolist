ARG PY_VERSION=3.13.1

FROM python:${PY_VERSION} AS base
WORKDIR /app
COPY . .
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt
RUN python manage.py migrate

FROM python:${PY_VERSION}-slim
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY --from=base /app .
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]
