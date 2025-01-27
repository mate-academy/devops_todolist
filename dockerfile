ARG PV=3.10

FROM python:${PV} AS base

WORKDIR /devops_todolist

COPY . .

FROM python:${PV}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /devops_todolist

COPY --from=base /devops_todolist .

RUN pip install -r requirements.txt

RUN pip install --upgrade pip

# Run database migrations
RUN python3 manage.py migrate

EXPOSE 8080

ENTRYPOINT [ "python3", "manage.py", "runserver", "0.0.0.0:8080"]
