ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app

COPY . .

FROM python:${PYTHON_VERSION}-slim
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN ["python", "manage.py", "migrate"]

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]


# docker build -f Dockerfile . -t todoapp:1.0.0
# docker run -e PYTHONUNBUFFERED=1 -p 8080:8080 todoapp:1.0.0
