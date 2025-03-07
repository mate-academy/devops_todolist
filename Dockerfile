ARG PY_VERSION=3.13
FROM python:${PY_VERSION}-slim
WORKDIR /data/
ENV PYTHONUNBUFFERED=1

COPY api/ api/
COPY lists/ lists/
COPY todolist/ todolist/
COPY accounts/ accounts/
COPY .pre-commit-config.yaml/ .travis.yml/ manage.py/ README.md/ requirements.txt/ ./

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]
