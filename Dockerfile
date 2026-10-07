ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION}-slim AS build

WORKDIR /app

ENV PYTHONUNBUFFERED=1
ENV PATH="/app/.venv/bin:$PATH"

RUN python -m venv /app/.venv

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN python manage.py migrate --noinput

FROM python:${PYTHON_VERSION}-slim AS run 

WORKDIR /app

ENV PYTHONUNBUFFERED=1
ENV PATH="/app/.venv/bin:$PATH"

COPY --from=build /app/.venv /app/venv
COPY --from=build /app /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
