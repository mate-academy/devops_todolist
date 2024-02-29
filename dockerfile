ARG python_version=3.9-slim
FROM python:${python_version} AS base

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --user -r requirements.txt


FROM python:${python_version}

ENV PYTHONUNBUFFERED=1

COPY --from=base /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

WORKDIR /app
COPY . /app

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

