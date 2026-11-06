ARG PYTHON_VERSION=3.10-slim
FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY requirements.txt .
RUN python -m venv /opt/venv
RUN /opt/venv/bin/pip install -r requirements.txt

COPY . .
RUN /opt/venv/bin/python manage.py migrate


FROM python:${PYTHON_VERSION} AS run 
ENV PYTHONUNBUFFERED=1
ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /app

COPY --from=build /opt/venv /opt/venv
COPY --from=build /app /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
