ARG pythonVersion=3.8

FROM python:${pythonVersion} as base

WORKDIR /devops_todolist

COPY . /devops_todolist

FROM python:${pythonVersion}-slim AS run

ENV PYTHONUNBUFFERED=1

WORKDIR /devops_todolist

COPY --from=base /devops_todolist /devops_todolist

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python3", "manage.py", "runserver", "0.0.0.0:8080"]