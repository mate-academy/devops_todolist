ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app


COPY requirements.txt manage.py LICENSE ./
COPY accounts/ ./accounts/
COPY api/ ./api/
COPY lists/ ./lists/
COPY todolist/ ./todolist/

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]