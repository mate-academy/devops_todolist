ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION} AS fundament

WORKDIR /app

COPY requirements.txt .

RUN pip install --user --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

ENV PYTHONUNBUFFERED=1

ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /app

COPY --from=fundament /root/.local /root/.local

COPY . .

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]








