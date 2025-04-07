FROM python:3.10 AS base
WORKDIR /app

COPY . .

FROM python:3.10-slim AS final
WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app .

RUN pip install --no-cache-dir -r requirements.txt &&  \
python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]