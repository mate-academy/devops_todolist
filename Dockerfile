ARG PYTHON_VERSION=3.14
FROM python:${PYTHON_VERSION} AS build

WORKDIR /app

COPY . .

RUN python -m venv venv
ENV PATH="/app/venv/bin:$PATH"

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY --from=build /app /app

ENV PATH="/app/venv/bin:$PATH"
RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8080"]