ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /usr/src/app

COPY . .

FROM python:${PYTHON_VERSION}-slim
WORKDIR /usr/src/app

COPY --from=base /usr/src/app .

RUN pip install --upgrade pip && \
	pip install -r requirements.txt
RUN python manage.py migrate

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver"]

CMD ["0.0.0.0:8080"]
