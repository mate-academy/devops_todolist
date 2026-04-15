ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY requirements.txt .

RUN pip install --user --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim AS runner

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=base /root/.local /root/.local

COPY . .

ENV PATH=/root/.local/bin:$PATH

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]