ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS base
WORKDIR /devops_todolist
COPY .  ./
ENV PYTHONUNBUFFERED=1


FROM python:${PYTHON_VERSION}-slim
WORKDIR /devops_todolist
COPY --from=base /devops_todolist .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080
CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:8080"]
