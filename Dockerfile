ARG PYTHON_VERSION=3.8
# Build stage
FROM python:${PYTHON_VERSION} AS base
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && \
pip install -r requirements.txt

COPY . .

RUN python manage.py migrate
# run stage
FROM python:${PYTHON_VERSION}

WORKDIR /app


COPY --from=base /app /app

COPY --from=base /usr/local/lib/python3.8 /usr/local/lib/python3.8
COPY --from=base /usr/local/bin /usr/local/bin

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]