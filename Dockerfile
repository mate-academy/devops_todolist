ARG PYTHON_VERSION=3.12

FROM python:${PYTHON_VERSION} AS base

LABEL authors="Andrii Shukalo"
WORKDIR /app/devops_todolist
COPY . .


FROM python:${PYTHON_VERSION}-slim
ENV PYTHONUNBUFFERED=1
COPY --from=base /app /app
WORKDIR /app/devops_todolist
RUN pip install -r requirements.txt
RUN python manage.py migrate

EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver" , "0.0.0.0:8080"]