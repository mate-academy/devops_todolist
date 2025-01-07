# 1. Build stage
ARG PYTHON=3.10
FROM python:${PYTHON} AS base
WORKDIR /app

COPY . .

FROM python:${PYTHON}-slim AS runtime

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=base /app/ /app/

COPY  requirements.txt /app/
RUN pip install --upgrade pip  && pip install -r requirements.txt

RUN python manage.py migrate

# Expose port
EXPOSE 8080

# Entry point and default command
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]
