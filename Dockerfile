ARG PYTHON_VERSION=3.8
# BUILD STAGE

FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt manage.py ./

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . .

RUN python manage.py migrate

# RUN STAGE
FROM python:${PYTHON_VERSION}-slim
ARG PYTHON_VERSION=3.8

WORKDIR /app

COPY --from=build /usr/local/lib/python${PYTHON_VERSION}/site-packages /usr/local/lib/python${PYTHON_VERSION}/site-packages
COPY --from=build /usr/local/bin /usr/local/bin
COPY --from=build /app /app

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]