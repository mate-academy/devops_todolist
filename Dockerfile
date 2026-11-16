ARG PYTHON_VERIONS=3.8

# Build stage
FROM python:${PYTHON_VERIONS} AS base
WORKDIR /app

LABEL authors="art-mac"

COPY . .

# Runtime stage
FROM python:${PYTHON_VERIONS}
ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY --from=base /app .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python3 manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8080"]