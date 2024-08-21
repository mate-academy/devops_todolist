ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY manage.py requirements.txt db.sqlite3 ./

COPY todolist/ ./todolist/

COPY lists/ ./lists/

COPY api/ ./api/

COPY accounts/ ./accounts/

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app 

COPY --from=build /app .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate


ENV PYTHONUNBUFFERED=1

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "runserver" ]

CMD ["0.0.0.0:8080"]
