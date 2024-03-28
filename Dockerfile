ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-slim AS build_stage
WORKDIR /todo_app
COPY . ./
RUN pip install -r requirements.txt && \
    python manage.py migrate

FROM build_stage as run_stage
ENV PYTHONUNBUFFERED=1
COPY --from=build_stage /todo_app .
EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8080"]