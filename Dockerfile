ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS base
WORKDIR /app
COPY . .
ENV PATH="/venv/bin:$PATH"
RUN python -m venv /venv && \
    pip install -r requirements.txt && \
    python manage.py migrate

FROM python:${PYTHON_VERSION}-slim
ENV PYTHONUNBUFFERED=1
ENV PATH="/venv/bin:$PATH"
WORKDIR /app
COPY --from=base /venv /venv
COPY --from=base /app /app
EXPOSE 8080
ENTRYPOINT ["python", "manage.py", "runserver"] 
CMD ["0.0.0.0:8080"]