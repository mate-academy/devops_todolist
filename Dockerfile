ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION} AS build_stage
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY . .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

FROM python:${PYTHON_VERSION}-slim AS run_stage
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY --from=build_stage /app .
COPY --from=build_stage /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8080"]
