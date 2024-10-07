#Build stage
ARG PYTHON_VESRION=3.8
FROM python:${PYTHON_VESRION} AS base
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY . ./

#Run stage
FROM python:${PYTHON_VESRION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate --noinput

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]