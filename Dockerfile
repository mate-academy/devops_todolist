ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION}-slim AS build

ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt
RUN cp -a /install/. /usr/local/

COPY . .

RUN python manage.py migrate

FROM python:${PYTHON_VERSION}-slim AS run
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /install /usr/local
COPY --from=build /app /app
EXPOSE 8080

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]